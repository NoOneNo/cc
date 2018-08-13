enable_testing()

add_executable(jscTest JSCTest.cpp)

target_link_libraries(jscTest jscHelper)

add_test(jscTest jscTest)