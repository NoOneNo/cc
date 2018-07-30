//
// Created by harry on 18-7-30.
//

#include "jscHelper.h"

#include <iostream>

//#include <JavaScriptCore/JavaScriptCore.h>
#include <JavaScriptCore/JSBase.h>
#include <JavaScriptCore/JSContextRef.h>
#include <JavaScriptCore/JSStringRef.h>
#include <JavaScriptCore/JSObjectRef.h>
#include <JavaScriptCore/JSValueRef.h>

using namespace std;

JSValueRef JSEvaluateScript(JSContextRef ctx, const char* jsScript);


JSValueRef ObjectCallAsFunctionCallback(JSContextRef ctx, JSObjectRef function, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception) {
    cout << "Hello js core" << endl;
    return JSValueMakeUndefined(ctx);
}

void addLogFunc(JSContextRef ctx) {
    JSStringRef logFunctionName = JSStringCreateWithUTF8CString("log");
    JSObjectRef functionObject = JSObjectMakeFunctionWithCallback(ctx, logFunctionName, &ObjectCallAsFunctionCallback);

    JSObjectRef globalObject = JSContextGetGlobalObject(ctx);
    JSObjectSetProperty(ctx, globalObject, logFunctionName, functionObject, kJSPropertyAttributeNone, nullptr);

    JSStringRelease(logFunctionName);
}

// https://developer.apple.com/documentation/javascriptcore
// https://karhm.com/JavaScriptCore_C_API/
// https://nshipster.com/javascriptcore/
int exeJs() {

    JSContextGroupRef contextGroup = JSContextGroupCreate();
    JSGlobalContextRef globalContext = JSGlobalContextCreateInGroup(contextGroup, nullptr);

    addLogFunc(globalContext);

    JSEvaluateScript(globalContext, "process.stdout.write(\"hello: \");");
    JSEvaluateScript(globalContext, "log();");


    /* memory management code to prevent memory leaks */
    JSGlobalContextRelease(globalContext);
    JSContextGroupRelease(contextGroup);

    return 0;
}

JSValueRef JSEvaluateScript(JSContextRef ctx, const char* jsScript){
    JSStringRef script = JSStringCreateWithUTF8CString(jsScript);
    JSValueRef jsValue = JSEvaluateScript(ctx, script, nullptr, nullptr, 1, nullptr);

    JSStringRelease(script);
    return jsValue;
}
