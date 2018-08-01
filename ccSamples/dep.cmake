find_package(Threads REQUIRED)

if(CMAKE_COMPILER_IS_GNUCXX)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -ansi -Wno-deprecated")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -ansi -Wno-deprecated")
endif()

if(MSVC)
    #vc 2012 fix for vararg templates
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_VARIADIC_MAX=10")
endif()

if(WIN32)
    set(_OPT_CMAKE_ARGS "-Dgtest_force_shared_crt=ON;-DCMAKE_SH=CMAKE_SH-NOTFOUND")
else()
    set(_OPT_CMAKE_ARGS "")
endif()

get_filename_component(DEPS_ROOT "${PROJECT_BINARY_DIR}/deps" ABSOLUTE)


include_directories("${DEPS_ROOT}/include")
link_directories("${DEPS_ROOT}/lib")
link_directories("${DEPS_ROOT}/lib64")