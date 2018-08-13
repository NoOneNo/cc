#enable_testing()

add_executable(testSample testSample.cpp)

add_dependencies(testSample "googletest.git")

#target_link_libraries(testSample gtest gtest_main ${CMAKE_THREAD_LIBS_INIT})

target_link_libraries(testSample gtestd gtest_maind ${CMAKE_THREAD_LIBS_INIT})

add_test(testSample testSample)

set_tests_properties(testSample PROPERTIES TIMEOUT 5)