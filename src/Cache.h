#pragma once

#include <stdbool.h>
#include "include/type_defs.h"

namespace riscv {

struct StorageStats {
    int32_t access_counter;
    int32_t miss_num;
    int32_t access_time;
    int32_t replace_num;
};

struct StorageLatency {
    int32_t hit_latency;
    int32_t bus_latency;
};

class Storage {
public:
    StorageStats stats;
    StorageLatency latency;
public:
    void SetStats(StorageStats ss) { this->stats = ss; }
    void SetLatency(StorageLatency sl) { this->latency = sl; }
    virtual void HandleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) = 0;
};

class Memory : public Storage {
public:
    virtual void HandleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time);
};

struct CacheConfig {
    int32_t size;
    int32_t association;
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
    int32_t not_access_time;
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
    void SetConfig(Cacheconfig cc) { config = cc; }
    void SetLower(Storage* ls) { lower = ls; }
    void initSet();

    virtual void HandleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time);
};

} // namespace riscv