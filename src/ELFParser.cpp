#include <string.h>
#include "src/ELFParser.h"

using namespace simulator;

void ELFParser::parse_elf_header(FILE* elf)
{
    Elf64_Ehdr elf64_ehdr;
    fseek(elf, 0, SEEK_SET);

    fread(&elf64_ehdr, sizeof(Elf64_Ehdr), 1, elf);

    entry = *(uint64_t*)&elf64_ehdr.e_entry;
    debug("entry of program: 0x%llx\n", entry);

    phoff = *(uint64_t*)&elf64_ehdr.e_phoff;
    debug("program header offset: 0x%llx\n", phoff);

    phsize = *(uint16_t*)&elf64_ehdr.e_phentsize;
    debug("size of program header entry: %hd\n", phsize);

    phnum = *(uint16_t*)&elf64_ehdr.e_phnum;
    debug("number of program header entries: %hd\n", phnum);

    shoff = *(uint64_t*)&elf64_ehdr.e_shoff;
    debug("section header offset: 0x%llx\n", shoff);

    shsize = *(uint16_t*)&elf64_ehdr.e_shentsize;
    debug("size of section header entry: %hd\n", shsize);

    shnum = *(uint16_t*)&elf64_ehdr.e_shnum;
    debug("number of section header entries: %hd\n", shnum);

    shstrndx = *(uint16_t*)&elf64_ehdr.e_shstrndx;
    debug("section name string table index: %hd\n", shstrndx);
}

void ELFParser::parse_section_headers(FILE* elf)
{
    /* wait to do */
}
void ELFParser::parse_program_headers(FILE* elf)
{
    /* wait to do */
}

void ELFParser::parse_main_addr(FILE* elf)
{
    Elf64_Shdr elf64_shdr;
    fseek(elf, shoff + shstrndx * shsize, SEEK_SET);
    fread(&elf64_shdr, sizeof(Elf64_Shdr), 1, elf);

    uint64_t shstr_offset = *(uint64_t*)&elf64_shdr.sh_offset;
    debug("shstr offset: 0x%llx\n", shstr_offset);

    for (int i = 0; i < shnum; i++) {
        fseek(elf, shoff + i * shsize, SEEK_SET);
        fread(&elf64_shdr, sizeof(Elf64_Shdr), 1, elf);

        char sec_name[100]; //! section name length < 100
        uint32_t sec_name_index = *(uint32_t*)&elf64_shdr.sh_name;

        fseek(elf, shstr_offset + sec_name_index, SEEK_SET);
        fread(sec_name, 100, 1, elf);

        if (strcmp(sec_name, ".symtab") == 0){
            sym_off = *(uint64_t*)&elf64_shdr.sh_offset;
            debug(".symtab offset: 0x%llx\n", sym_off);

            sym_entsize = *(uint64_t*)&elf64_shdr.sh_entsize;
            debug(".symtab entry size: %lld\n", sym_entsize);

            sym_num = *(uint64_t*)&elf64_shdr.sh_size / sym_entsize;
            debug(".symtab entry number: %lld\n", sym_num);
        }

        if (strcmp(sec_name, ".strtab") == 0){
            strtab_off = *(uint64_t*)&elf64_shdr.sh_offset;
            debug(".strtab offset: 0x%llx\n", strtab_off);
        }
    }

    Elf64_Sym elf64_sym;
    for (int i = 0; i < sym_num; i++) {
        fseek(elf, sym_off + i * sym_entsize, SEEK_SET);
        fread(&elf64_sym, sizeof(Elf64_Sym), 1, elf);

        char sym_name[100]; //! symbol name length < 100
        uint32_t sym_name_index = *(uint32_t*)&elf64_sym.st_name;

        fseek(elf, strtab_off + sym_name_index, SEEK_SET);
        fread(sym_name, 100, 1, elf);

        if(strcmp(sym_name, "main") == 0){
            main_vaddr = *(uint64_t*)&elf64_sym.st_value;
            debug("main function vaddress: 0x%llx\n", main_vaddr);
            return;
        }
    }

    fprintf(stderr, "Can't find main function\n");
    exit(-1);
}