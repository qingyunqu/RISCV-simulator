#pragma once

#include <stdbool.h>
#include "include/type_defs.h"

namespace riscv {

struct StorageStats {
    int32_t access_cnt;
    int32_t miss_num;
    int32_t replace_num;
};

class Storage {
public:
    StorageStats stats;
    int32_t hit_latency;

public:
    Srorgae() {
        stats.access_cnt = 0;
        stats.miss_num = 0;
        stats.replace_num = 0;
    }
    void setLatency(int32_t hl) { this->latency->hit_latency = hl; }
    virtual void handleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) = 0;
};

class Memory : public Storage {
public:
    virtual void handleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time);
};

struct CacheConfig {
    int32_t size;
    int32_t associativity;
    int32_t set_num;
    bool write_through;
    bool write_allocate;
    int32_t block_size;
    int32_t s;
    int32_t b;
    int32_t t;
};

struct CacheLine {
    uint64_t tag;
    bool valid;
    bool dirty;
};

struct CacheSet {
    CacheLine* line;
};

class Cache : public Storage {
public:
    CacheConfig config;
    Storage* lower;
    CacheSet* set;

public:
    ~Cache(){
        for(int s = 0; s < config.set_num; s++){
            delete[] this->set[s].line;
        }
        delete[] this->set;
    }
    void setConfig(CacheConfig cc) { config = cc; }
    void setLower(Storage* ls) { lower = ls; }
    void setTag(int32_t s, int32_t l, uint64_t tag) { set[s].line[l].tag = tag; }
    void setDirty(int32_t s, int32_t l, bool dirty) { set[s].line[l].dirty = dirty; }
    void setValid(int32_t s, int32_t l) { set[s].line[l].valid = true; }
    void initSet();
    int32_t isHit(int32_t s, uint64_t tag);
    int32_t replace(int32_t s, uint64_t tag);
    void evict(int32_t s, int32_t l);

    virtual void handleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time);
};

} // namespace riscv