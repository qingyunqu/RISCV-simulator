#pragma once

#include <stdbool.h>
#include "include/type_defs.h"

namespace riscv {

struct CacheConfig {
    int size;
    int associativity;
    int set;
    bool write_through;
    bool write_allocate;
    int block_size;
    
};

} // namespace riscv