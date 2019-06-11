#pragma once

#include <stdbool.h>
#include "include/riscv_defs.h"
#include "include/type_defs.h"

namespace riscv {

struct CPU {
    uint64_t PC;  // Program Counter(vaddr)
    uint32_t IR;  // Instruction Register
    uint64_t reg[32];  // registers

    void init(){
        //
    }
};

class Simulator {
public:
    static bool single_step_flag; // single step debug mode
    static uint64_t start_addr;
    CPU cpu;

public:
    Simulator();
    void run();

};

inline Simulator::Simulator(){
    cpu.init();
}

} // namespace simulator