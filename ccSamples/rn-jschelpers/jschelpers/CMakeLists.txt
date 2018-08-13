if(UBUNTU)
    set(INC_DIR
            ${INC_DIR}
            /usr/include/webkitgtk-1.0) # sudo apt-get install libjavascriptcoregtk-1.0-dev
endif()

include_directories(${INC_DIR} ../)

if (APPLE)
    set(jscso ${MAC_SDKS}/JavaScriptCore.framework/JavaScriptCore.tbd) # install xcode
elseif(UBUNTU)
    set(jscso /usr/lib/x86_64-linux-gnu/libjavascriptcoregtk-1.0.so) # sudo apt-get install libjavascriptcoregtk-1.0-dev
endif()

ADD_LIBRARY (jscHelper
        JSCHelpers.cpp
        Unicode.cpp
        Value.cpp ../test/JSCTest.cpp ../test/JSCTest.h)

target_link_libraries(jscHelper ${jscso})




