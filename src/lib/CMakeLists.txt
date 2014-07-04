cmake_minimum_required(VERSION 2.8)

file(GLOB sources *.cpp)

include_directories(".")
add_library(example ${sources})

