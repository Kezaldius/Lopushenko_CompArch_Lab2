cmake_minimum_required(VERSION 3.16)
project(CalculatorProject)

set(CMAKE_CXX_STANDARD 20)
# Made by Lopushenko Kyrylo IO-32
add_library(calculator STATIC calculator.cpp)
add_executable(compiledprogram main.cpp)

target_link_libraries(compiledprogram PRIVATE calculator)
