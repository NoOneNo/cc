
add_subdirectory("jsc-helper")
#add_subdirectory("jni-helper")

add_executable(ccSmaple
        main.cc)

target_link_libraries(ccSmaple
        jscHelper)

ExtProjectGit("https://github.com/google/glog.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "glog.git")

#ExternalProject_Add(boost
#        GIT_REPOSITORY https://github.com/mirror/boost.git
#        GIT_TAG master
#
#        CONFIGURE_COMMAND bash ${DEPS_ROOT}/boost/bootstrap.sh --with-libraries=date_time,thread,filesystem,system
#        BUILD_COMMAND ${DEPS_ROOT}/boost/b2 -j10 cflags=-fPIC cxxflags=-fPIC cxxflags=-fvisibility=hidden cxxflags=-fvisibility-inlines-hidden cxxflags=-fexceptions cxxflags=-DBOOST_NO_RTTI
##        BUILD_IN_SOURCE 1
#
#
#        PREFIX "${destination}"
#        INSTALL_DIR "${destination}"
#        )



ExtProjectGit("https://github.com/google/double-conversion.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "double-conversion.git")

ExtProjectGit("https://github.com/facebook/folly.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "folly.git")

