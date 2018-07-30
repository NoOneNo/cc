# ubuntu


set(INC_DIR
        ${INC_DIR}
        /usr/include/webkitgtk-1.0) # sudo apt-get install libjavascriptcoregtk-1.0-dev

include_directories(${INC_DIR})

ADD_LIBRARY (jscHelper
        jscHelper.cpp
        jscHelper.h)

set(jscso /usr/lib/x86_64-linux-gnu/libjavascriptcoregtk-1.0.so) # sudo apt-get install libjavascriptcoregtk-1.0-dev

target_link_libraries(jscHelper ${jscso})