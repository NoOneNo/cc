//
// Created by harry on 18-8-13.
//

#ifndef CCSAMPLE_JSEXECUTOR_H
#define CCSAMPLE_JSEXECUTOR_H


namespace facebook {
namespace react {

    class JSBigString;
    class JSExecutor;
    class JSModulesUnbundle;
    class MessageQueueThread;
    class ModuleRegistry;
    class RAMBundleRegistry;

    class ExecutorDelegate {
    public:
        virtual ~ExecutorDelegate() {}

        virtual std::shared_ptr<ModuleRegistry> getModuleRegistry() = 0;

        virtual void callNativeModules(
                JSExecutor& executor, folly::dynamic&& calls, bool isEndOfBatch) = 0;

        virtual MethodCallResult callSerializableNativeHook(
                JSExecutor& executor, unsigned int moduleId, unsigned int methodId, folly::dynamic&& args) = 0;
    };

}
}

#endif //CCSAMPLE_JSEXECUTOR_H
