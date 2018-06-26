cmake_minimum_required(VERSION 3.3)
project(CodeEval)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        codeEvalHelper.h
        #string_mask.cpp
        #sort_matix_columns.cpp
        #sum_of_integers.cpp
        #reverse_and_add.cpp
        #robot_movements.cpp
        #grid_walk.cpp
        #odd_numbers.cpp
        #data_recovery.cpp
        #multipication_table.cpp
        #fizzbuzz.cpp
        #lucky_ticket.cpp
        #simple_or_trump.cpp
        #shortest_repetition.cpp
        #multiply_lists.cpp
        #detecting_cycles.cpp
        #cash_register.cpp
        #trailing_string.cpp
#        double_squares.cpp
        mixed_content.cpp
        )
add_executable(CodeEval ${SOURCE_FILES})