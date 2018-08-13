//
// Created by harry on 18-8-13.
//

#include "JSCTest.h"
#include "gtest/gtest.h"
#include "jschelpers/JSCHelpers.h"

#include <algorithm>
#include <condition_variable>
#include <mutex>
#include <sstream>
#include <string>
#include <system_error>

#include <folly/Conv.h>
#include <folly/Exception.h>
#include <folly/Memory.h>
#include <folly/String.h>
#include <folly/json.h>

#include <jschelpers/JSCHelpers.h>
#include <jschelpers/Value.h>


TEST(JSCExecutor, Initialize) {
ExecutorDelegate
//JSCExecutor executor(std::make_shared<NullDelegate>(), std::make_shared<FakeMessageQueue>(), "", folly::dynamic::object);
}