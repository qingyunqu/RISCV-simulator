cmake_minimum_required(VERSION 3.0)

project(RISCV-Simulator)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

set(Simulator_SRCS ./src/Cache.cpp ./src/ELFParser.cpp ./src/Simulator.cpp ./src/main.cpp)
set(Cache_SRCS ./src/Cache.cpp ./src/cachemain.cpp)

add_executable(simulator ${Simulator_SRCS})
add_executable(cache ${Cache_SRCS})