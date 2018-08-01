cmake_minimum_required(VERSION 3.12)

set(CMAKE_CXX_STANDARD 14)

include(cmake-helper/ENV.cmake)
include(cmake-helper/ExtProjectUtils.cmake)

include(dep.cmake)


include(main.cmake)

#-------------------
# Test
#-------------------

# Will download external CMakeable project from git repo, branch "master" and install it in $DEPS_ROOT
# This also will create "googletest.git" target, which we'll use as dependency for our test project
ExtProjectGit("https://github.com/google/googletest.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")




enable_testing()

add_subdirectory("test-samples")