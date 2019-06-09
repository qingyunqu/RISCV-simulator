#include <stdio.h>
#include <unistd.h>

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
    if (argc > 1){
        while((ch = getopt(argc, argv, "e:hs")) != 1){
            switch(ch){
                case 'e':
                    filename = optarg;
                    break;
                case 'h':
                    print_help();
                    return 0;
                case 's':
                    single_step_flag = 1;
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
}