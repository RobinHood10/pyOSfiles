cmake_minimum_required(VERSION 3.0)
project(Assignment5_pi)

if(CMAKE_COMPILER_IS_GNUCXX)
	set(CMAKE_CXX_FLAGS "-std=c++11 -lpthread -O3 ${CMAKE_CXX_FLAGS}")
endif()

add_executable(
Assignment5_pi threadpie.cpp
ComputePiDigit.hpp
ComputePiDigit.cpp
)

