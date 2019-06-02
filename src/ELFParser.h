#pragma once

#include <stdio.h>
#include <stdlib.h>
#include "include/debug.h"
#include "include/elf_defs.h"
#include "include/type_defs.h"

namespace simulator {

class ELFParser {
private:
    /* ELF Header */
    uint64_t entry; //entry of program
    //Program Headers
    uint64_t phoff;
    uint16_t phsize;
    uint16_t phnum;
    //Section Headers
    uint64_t shoff;
    uint16_t shsize;
    uint16_t shnum;
    uint16_t shstrndx; // section name string table index

    /* SymTab */
    uint64_t sym_off;
    uint64_t sym_entsize;
    uint64_t sym_num;

    /* StrTab */
    uint64_t strtab_off;

    /* main function virtual address */
    uint64_t main_vaddr;
public:
    void read_elf(char* filename) {
        FILE* elf = fopen(filename, "rb");
        if (elf == NULL){
            fprintf(stderr, "Can't open file: %s\n", filename);
            exit(-1);
        }

        parse_elf_header(elf);
        parse_main_addr(elf);

        fseek(elf, 0, SEEK_SET);
    }
    void parse_elf_header(FILE* elf);
    void parse_section_headers(FILE* elf);
    void parse_program_headers(FILE* elf);
    void parse_main_addr(FILE* elf);
};

} //namespace simulator