

if (APPLE)
    set(INC_DIR
            ${INC_DIR}
            ${MAC_SDKS}/JavaVM.framework/Headers)
elseif(LINUX)
    set(JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64)
    set(INC_DIR
            ${INC_DIR}
            ${JAVA_HOME}/include)
    set(INC_DIR
            ${INC_DIR}
            ${JAVA_HOME}/include/linux)
endif()

include_directories(${INC_DIR})

ADD_LIBRARY (jniHelper
        jniHelper.cpp
        jniHelper.h)