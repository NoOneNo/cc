# ubuntu
set(JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64)

set(INC_DIR
        ${INC_DIR}
        ${JAVA_HOME}/include)

set(INC_DIR
        ${INC_DIR}
        ${JAVA_HOME}/include/linux)

include_directories(${INC_DIR})

ADD_LIBRARY (jniHelper
        jniHelper.cpp
        jniHelper.h)