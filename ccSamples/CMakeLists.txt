cmake_minimum_required(VERSION 3.12)
project(ccSmaple)

set(CMAKE_CXX_STANDARD 14)

# CHECK ENV
MESSAGE(STATUS "LINUX : ${LINUX}")
MESSAGE(STATUS "APPLE : ${APPLE}")
MESSAGE(STATUS "UNIX : ${UNIX}")
MESSAGE(STATUS "CMAKE_SYSTEM_NAME : ${CMAKE_SYSTEM_NAME}")
if (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    SET(LINUX 1)
endif()
MESSAGE(STATUS "LINUX : ${LINUX}")


set(MAC_SDKS /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks)

add_subdirectory("${PROJECT_SOURCE_DIR}/jni-helper")
add_subdirectory("${PROJECT_SOURCE_DIR}/jsc-helper")

add_executable(ccSmaple
        main.cc
        jsc-helper/jscHelper.h
        jni-helper/jniHelper.h)

target_link_libraries(ccSmaple jscHelper jniHelper)


