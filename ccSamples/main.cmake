
add_subdirectory("jsc-helper")
#add_subdirectory("jni-helper")

add_executable(ccSmaple
        main.cc)

target_link_libraries(ccSmaple
        jscHelper)

ExtProjectGit("https://github.com/google/glog.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
add_dependencies(ccSmaple "glog.git")


#ExternalProject_Add(
#        boost
#        URL "https://sourceforge.net/projects/boost/files/boost/${boost_VERSION}/boost_${boost_VERSION_UNDERSCORE}.tar.bz2"
#        INSTALL_COMMAND "" # Disable install step
#        UPDATE_COMMAND "" # Doesn't change often
#        CONFIGURE_COMMAND "${BASH_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/configureboost.sh" "${BOOST_DOWNLOAD_DIR}" "${BOOST_INSTALL_DIR}"
#        BUILD_COMMAND "${BASH_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/buildboost.sh" "${BOOST_DOWNLOAD_DIR}" "${BOOST_LIB_DIR}"
#        LOG_DOWNLOAD ON
#        LOG_CONFIGURE ON
#        LOG_BUILD ON
#)



#ExtProjectGit("https://github.com/google/double-conversion.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}")
#add_dependencies(ccSmaple "double-conversion.git")

#ExtProjectGit("https://github.com/facebook/folly.git" "master" ${DEPS_ROOT} CMAKE_ARGS "${_OPT_CMAKE_ARGS}") #;-DBoost_DEBUG=ON
#add_dependencies(ccSmaple "folly.git")

