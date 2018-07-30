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

JSValueRef ObjectCallAsFunctionCallback(JSContextRef ctx, JSObjectRef function, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception) {
    cout << "Hello js core" << endl;
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
