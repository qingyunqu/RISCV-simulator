cmake_minimum_required(VERSION 3.0)

project(RISCV-Simulator)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

aux_source_directory(./src/ Simulator_SRCS)

add_executable(Simulator ${Simulator_SRCS})