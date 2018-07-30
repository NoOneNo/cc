
if(LINUX)
    set(INC_DIR
            ${INC_DIR}
            /usr/include/webkitgtk-1.0) # sudo apt-get install libjavascriptcoregtk-1.0-dev
endif()

include_directories(${INC_DIR})

ADD_LIBRARY (jscHelper
        jscHelper.cpp
        jscHelper.h)

if (APPLE)
    set(jscso ${MAC_SDKS}/JavaScriptCore.framework/JavaScriptCore.tbd) # install xcode
elseif(LINUX)
    set(jscso /usr/lib/x86_64-linux-gnu/libjavascriptcoregtk-1.0.so) # sudo apt-get install libjavascriptcoregtk-1.0-dev
endif()

target_link_libraries(jscHelper ${jscso})