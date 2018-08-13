cmake_minimum_required(VERSION 3.12)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory("../jsc-helper")
#add_subdirectory("jni-helper")

add_executable(ccSmaple
        main.cc)

target_link_libraries(ccSmaple
        jscHelper)