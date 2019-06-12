#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>
#include "src/Simulator.h"
#include "src/ELFParser.h"

using namespace riscv;

extern char* optarg;

void print_help(){
    printf("simulator -e [file] [options]\n");
    printf("Options:\n");
    printf("\t-h for help\n");
    printf("\t-s single step mode\n");
}

int main(int argc, char** argv)
{
    int ch;
    char* filename;
    bool single_step_flag = false;
    if (argc > 1){
        while((ch = getopt(argc, argv, "e:hs")) != -1){
            switch(ch){
                case 'e':
                    filename = optarg;
                    break;
                case 'h':
                    print_help();
                    return 0;
                case 's':
                    single_step_flag = true;
                    break;
                case '?':
                    return 0;
            }
        }
    }
    else{
        printf("Usage: simulator -e [file] or -h for help\n");
        return 0;
    }

    ELFParser parser;
    parser.read_elf(filename);

    Simulator simulator(parser.main_vaddr, parser.main_end_vaddr);
    simulator.single_step_flag = single_step_flag;
    simulator.read_into_memory(filename);
    simulator.run();

}