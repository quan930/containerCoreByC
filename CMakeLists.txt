cmake_minimum_required(VERSION 3.10.2)
project(container C)

set(CMAKE_C_STANDARD 99)

add_executable(container main.c util.c util.h)