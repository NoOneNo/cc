
add_subdirectory("jsc-helper")
#add_subdirectory("jni-helper")

add_executable(ccSmaple
        main.cc)

target_link_libraries(ccSmaple
        jscHelper
        folly
        glog)

ExtProjectGit("https://github.com/facebook/folly.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "folly.git")

ExtProjectGit("https://github.com/google/glog.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "glog.git")