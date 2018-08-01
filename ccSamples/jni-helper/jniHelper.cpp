//
// Created by harry on 18-7-30.
//

#include "jniHelper.h"

#include <iostream>
#include <jni.h>
#include <cassert>

#ifdef __cplusplus
extern "C" {
#endif

/*
* System.loadLibrary("lib")时调用自动调用JNI_OnLoad
* 如果成功返回JNI版本, 失败返回-1
*/
// https://android.googlesource.com/platform/development/+/master/samples/SimpleJNI/jni/native.cpp
// https://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/invocation.html
// https://blog.csdn.net/zhenyongyuan123/article/details/5862054 error
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void* reserved) {
    std::cout << "JNI, OnLoad!" << std::endl;
    fflush(stdout);

    JNIEnv* env = nullptr;
//    jint result;

    if (vm->GetEnv((void**) &env, JNI_VERSION_1_4) != JNI_OK) {
        return -1;
    }
    assert(env != nullptr);

//    if (!registerNatives(env)) {//注册
//        return -1;
//    }

    //成功
    return JNI_VERSION_1_4;
}

JNIEXPORT jint JNICALL Java_Hello_sayHello (JNIEnv *env, jobject obj) {
    printf("Hello JNI\n");
    return 10;
}

#ifdef __cplusplus
}
#endif

