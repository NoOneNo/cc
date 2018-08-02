MESSAGE(STATUS "=============env=================")
MESSAGE(STATUS "LINUX : ${LINUX}")
MESSAGE(STATUS "APPLE : ${APPLE}")
MESSAGE(STATUS "UNIX : ${UNIX}")
MESSAGE(STATUS "CMAKE_SYSTEM_NAME : ${CMAKE_SYSTEM_NAME}")
if (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    SET(LINUX 1)
endif()
MESSAGE(STATUS "LINUX : ${LINUX}")

MESSAGE(STATUS "CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES : ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES}")

set(MAC_SDKS /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks)


MESSAGE(STATUS "=============env end=================")