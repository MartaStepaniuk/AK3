cmake_minimum_required(VERSION 2.8)

project(AK3)

set(SOURCE_EXE lab3.cpp)

set(SOURCE_LIB notification.cpp)

add_library(notification STATIC ${SOURCE_LIB})

add_executable(lab3 ${SOURCE_EXE})

target_link_libraries(lab3 notification)	
