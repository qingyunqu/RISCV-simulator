#include "src/Cache.h"

using namespace riscv;

void Memory::HandleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) {
    hit = true;
    time = latency.hit_latency + latency. bus_latency;
    stats.access_time += time;
    stats.access_counter++;
}

void Cache::initSet() {
    this->set = new CacheSet[this->config.set_num];
    for(int s = 0; s < config.set_num; s++){
        this->set[s].line = new CacheLine[config.association];
        for(int l = 0; l < config.association; l++){
            set[s].line[l].tag = 0;
            set[s].line[l].valid = false;
            set[s].line[l].dirty = false;
            set[s].line[l].not_access_time = 0;
        }
    }
}
void Cache::HandleRequest(uint64_t addr, int32_t bytes, bool read, bool& hit, int32_t& time) {

}