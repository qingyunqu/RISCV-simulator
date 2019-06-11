#include "src/Simulator.h"

using namespace riscv;

namespace {

uint64_t sign_ext(uint64_t i, int32_t byte) {
    switch(byte){
    case 1:
        if((i & 0x80) >> 7){
            i += 0xffffffffffffff00;
        }
        break;
    case 2:
        if((i & 0x8000) >> 15){
            i += 0xffffffffffff0000;
        }
        break;
    case 4:
        if((i & 0x80000000) >> 31){
            i += 0xffffffff00000000;
        }
        break;
    default:
        break;
    }
    return i;
}

uint64_t sign_ext_bit(uint64_t i, int32_t bit) {
    uint64_t tmp = (uint64_t) 1 << (bit - 1);
    if((tmp & i) >> (bit - 1)){
        i += ((0xffffffffffffffff>>bit)<<bit);
    }
    return i;
}

} // anonymous namespace

