#include <iostream>
#include <jni.h>
#include <cassert>
#include <JavaScriptCore/JavaScriptCore.h>

int exeJs();

int main() {
    std::cout << "Hello, World!" << std::endl;

    exeJs();
    return 0;
}

// js bright

using namespace std;

JSValueRef ObjectCallAsFunctionCallback(JSContextRef ctx, JSObjectRef function, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception) {
    cout << "Hello World" << endl;
    return JSValueMakeUndefined(ctx);
}

// https://developer.apple.com/documentation/javascriptcore
// https://karhm.com/JavaScriptCore_C_API/
int exeJs() {

    JSContextGroupRef contextGroup = JSContextGroupCreate();
    JSGlobalContextRef globalContext = JSGlobalContextCreateInGroup(contextGroup, nullptr);
    JSObjectRef globalObject = JSContextGetGlobalObject(globalContext);

    JSStringRef logFunctionName = JSStringCreateWithUTF8CString("log");
    JSObjectRef functionObject = JSObjectMakeFunctionWithCallback(globalContext, logFunctionName, &ObjectCallAsFunctionCallback);

    JSObjectSetProperty(globalContext, globalObject, logFunctionName, functionObject, kJSPropertyAttributeNone, nullptr);

    JSStringRef logCallStatement = JSStringCreateWithUTF8CString("log()");

    JSEvaluateScript(globalContext, logCallStatement, nullptr, nullptr, 1,nullptr);

    /* memory management code to prevent memory leaks */

    JSGlobalContextRelease(globalContext);
    JSContextGroupRelease(contextGroup);
    JSStringRelease(logFunctionName);
    JSStringRelease(logCallStatement);

    return 0;
}

//  jni

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
    jint result;

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

