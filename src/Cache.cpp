#include "src/Cache.h"

using namespace riscv;

void MemoryStorage::handleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) {
    hit = true;
    time = hit_latency;
    stats.access_cnt++;
}

void Cache::initSet() {
    this->set = new CacheSet[this->config.set_num];
    for(int s = 0; s < config.set_num; s++){
        this->set[s].line = new CacheLine[config.associativity];
        for(int l = 0; l < config.associativity; l++){
            set[s].line[l].tag = 0;
            set[s].line[l].valid = false;
            set[s].line[l].dirty = false;
        }
    }
}

void Cache::handleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) {
    time = 0;
    hit = false;
    this->stats.access_cnt++;

    uint64_t tag;
    int32_t s;
    int32_t l;

    tag = (addr >> (config.s + config.b)) << (config.s + config.b);
    s = (addr - tag) >> config.b;
    l = isHit(s, tag);
    if(l < 0){
        hit = false;
        if(read){
            bool lower_hit;
            int32_t lower_time;
            lower->handleRequest(addr, bytes, read, lower_hit, lower_time);
            time += lower_time;
            stats.miss_num++;
            l = replace(s, tag);
            return;
        }
        else{
            if(config.write_allocate){
                bool lower_hit;
                int32_t lower_time;
                lower->handleRequest(addr, bytes, read, lower_hit, lower_time);
                time += lower_time;
                stats.miss_num++;
                l = replace(s, tag);
                setDirty(s, l, true);
                return;
            }
            else{
                bool lower_hit;
                int32_t lower_time;
                lower->handleRequest(addr, bytes, read, lower_hit, lower_time);
                time += lower_time;
                stats.miss_num++;
                return;
            }
        }
    }
    else{
        hit = true;
        if(read){
            time = hit_latency;
            return;
        }
        else{
            if(config.write_through){
                time = hit_latency;
                bool lower_hit;
                int32_t lower_time;
                lower->handleRequest(addr, bytes, read, lower_hit, lower_time);
                return;
            }
            else{
                time = hit_latency;
                setDirty(s, l, true);
                return;
            }
        }
    }
}

int32_t Cache::isHit(int32_t s, uint64_t tag){
    for(int l = 0; l < config.associativity; l++){
        if(set[s].line[l].valid != 0 && set[s].line[l].tag == tag){
            return l;
        }
    }
    return -1;
}

int32_t Cache::replace(int32_t s, uint64_t tag){
    for(int i = 0; i < config.associativity; i++){
        if(!set[s].line[i].valid){
            setTag(s, i, tag);
            setValid(s, i);
            return i;
        }
    }
    evict(s, 0);
    setTag(s, 0, tag);
    stats.replace_num++;
    return 0;
}

void Cache::evict(int32_t s, int32_t l){
    set[s].line[l].dirty = false;
}