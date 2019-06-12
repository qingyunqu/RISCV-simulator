#pragma once

#include <stdbool.h>
#include "include/riscv_defs.h"
#include "include/type_defs.h"
#include "include/debug.h"

namespace riscv {

struct CPU {
    uint64_t pc;  // Program Counter(vaddr)
    uint32_t ir;  // Instruction Register(32 bit)
    uint64_t reg[32];  // registers

    void init(){
        reg[0] = 0;
    }
};

struct Memory {
    uint8_t memory[0x100000]; // the whole memory

    uint64_t memory_offset; // memory offset of virtual address
    uint8_t* stack; // stack virtual address
    uint8_t* bss; // bss virtual address

    void init(){
        memory_offset = 0x10000;
        stack = (uint8_t*)(0x80000 + memory_offset);
        bss = (uint8_t*)(0x40000 + memory_offset);
    }
};

struct State {
    uint64_t dynamic_ins_cnt;
    uint64_t cycle_cnt;
    float64_t cpi;

    // stall count
    uint64_t load_use_stall;
    uint64_t jr_stall;
    uint64_t b_stall;

    void init(){
        dynamic_ins_cnt = 0;
        cycle_cnt = 0;
        cpi = 0.f;
        load_use_stall = 0;
        jr_stall = 0;
        b_stall = 0;
    }
};

class Simulator {
public:
    bool single_step_flag; // single step debug mode

private:
    CPU cpu;
    Memory mem;
    State state;

    uint64_t start_addr;
    uint64_t end_addr;

    InsType ins_type;
    uint32_t rs1;
    uint32_t rs2;
    uint32_t rd;
    uint32_t imm;

    uint32_t old_ins;
    uint32_t old_rd;

public:
    Simulator(uint64_t start_vaddr, uint64_t end_vaddr);
    void read_into_memory(const char* filename);
    void run();
    void single_step();
    void pipeline();
    bool one_ins_exec();

    // Execute an instruction
    void IF(); // Instruction Fetch
    void ID(uint32_t ins, InsType& type, uint32_t& id_rs1, uint32_t& id_rs2, uint32_t& id_rd, uint32_t& id_imm); // Instruction Decode
    uint64_t EX(InsType type, uint32_t ex_rs1, uint32_t ex_rs2, uint32_t ex_imm); // Execute
    uint64_t MEM(InsType type, uint64_t ex_result, uint32_t mem_rs2); // Memory
    void WB(InsType type, uint64_t mem_result, uint32_t wb_rd); // Write Back

    // helper function
    uint32_t get_instruction();
    uint64_t read_mem(uint64_t addr, int32_t byte);
    void write_mem(uint64_t addr, uint64_t reg_v, int32_t byte);
};

inline Simulator::Simulator(uint64_t start_vaddr, uint64_t end_vaddr){
    cpu.init();
    mem.init();
    state.init();
    start_addr = start_vaddr;
    end_addr = end_vaddr;
    cpu.pc = start_vaddr;
    cpu.reg[SP] = (uint64_t)mem.stack;
    cpu.reg[GP] = (uint64_t)mem.bss;
}

inline void Simulator::run(){
    if(single_step_flag){
        single_step();
    }
    else{
        pipeline();
    }
}

inline uint32_t Simulator::get_instruction(){
    return *(uint32_t*)(mem.memory + cpu.pc - mem.memory_offset);
}

} // namespace riscv