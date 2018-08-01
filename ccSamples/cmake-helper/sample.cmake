cmake_minimum_required(VERSION 3.12)
project(jni)

set(CMAKE_CXX_STANDARD 14)


# http://mrjoelkemp.com/2012/01/getting-started-with-jni-and-c-on-osx-lion/
# https://developer.apple.com/library/archive/documentation/Java/Conceptual/Java14Development/05-CoreJavaAPIs/CoreJavaAPIs.html


include_directories(${INC_DIR})
link_directories(${LINK_DIR})


#分别生成动态库和静态库 http://digested.site/2018/cmake/
ADD_LIBRARY(hello SHARED ${LIBHELLO_SRC})
ADD_LIBRARY(hello_static STATIC ${LIBHELLO_SRC})

#重命名hello_static 为hello，统一输出文件的名字
SET_TARGET_PROPERTIES(hello_static PROPERTIES OUTPUT_NAME "hello")

#设置版本号
SET_TARGET_PROPERITES(hello PROPERTIES VERSION 1.2 SOVERSION 1)

#配置install
INSTALL(TARGETS hello hello_static
        LIBRARY DESTINATION lib #LIBRARY DESTINATION 为动态库
        ARCHIVE DESTINATION lib #ARCHIVE DESTINATION 为静态库
        )
INSTALL(FILES hello.h DESTINATION include/hello)


add_executable(jni main.cc jsc-helper/jscHelper.cpp jsc-helper/jscHelper.h)
add_library(onload SHARED main.cc)


target_link_libraries(onload -L${LINK_DIR})


# 打印相关信息, CMAKE_CURRENT_SOURCE_DIR指的是当前处理的CMakeLists.txt所在的路径
MESSAGE(STATUS "current path: ${CMAKE_CURRENT_SOURCE_DIR}")

# 使CMake支持C++11特性
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu++0x")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++0x")

#https://blog.csdn.net/fengbingchun/article/details/78898623



