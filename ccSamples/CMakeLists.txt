cmake_minimum_required(VERSION 3.12)
project(ccSmaple)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory("${PROJECT_SOURCE_DIR}/jni-helper")
add_subdirectory("${PROJECT_SOURCE_DIR}/jsc-helper")

add_executable(ccSmaple
        main.cc
        jsc-helper/jscHelper.h
        jni-helper/jniHelper.h)

target_link_libraries(ccSmaple jscHelper jniHelper)


