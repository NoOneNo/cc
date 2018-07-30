# https://github.com/facebook/react-native/blob/master/ReactAndroid/build.gradle

#task downloadFolly(dependsOn: createNativeDepsDirectories, type: Download) {
#src 'https://github.com/facebook/folly/archive/v2016.10.31.00.tar.gz'
#onlyIfNewer true
#overwrite false
#dest new File(downloadsDir, 'folly-2016.10.31.00.tar.gz');
#}

#task downloadGlog(dependsOn: createNativeDepsDirectories, type: Download) {
#src 'https://github.com/google/glog/archive/v0.3.5.tar.gz'
#onlyIfNewer true
#overwrite false
#dest new File(downloadsDir, 'glog-0.3.5.tar.gz')
#}

#task downloadBoost(dependsOn: createNativeDepsDirectories, type: Download) {
#src 'https://github.com/react-native-community/boost-for-react-native/releases/download/v1.63.0-0/boost_1_63_0.tar.gz'
#onlyIfNewer true
#overwrite false
#dest new File(downloadsDir, 'boost_1_63_0.tar.gz')
#}

#task downloadDoubleConversion(dependsOn: createNativeDepsDirectories, type: Download) {
#src 'https://github.com/google/double-conversion/archive/v1.1.6.tar.gz'
#onlyIfNewer true
#overwrite false
#dest new File(downloadsDir, 'double-conversion-1.1.6.tar.gz')
#}

#================

# https://github.com/facebook/react-native/blob/ccdd450b1284b73bee80a9709c864816cbfc1108/ReactAndroid/src/main/jni/third-party/folly/Android.mk

#LOCAL_SRC_FILES:= \
#folly/json.cpp \
#folly/Unicode.cpp \
#folly/Conv.cpp \
#folly/Demangle.cpp \
#folly/detail/MallocImpl.cpp \
#folly/StringBase.cpp \
#folly/dynamic.cpp \

#LOCAL_SHARED_LIBRARIES := libglog libdouble-conversion
## Boost is header-only library we pretend to link is statically as
## this way android makefile will automatically setup path to boost header
## file, but except from that this will have no effect, as no c/cpp files
## are part of this static library
#LOCAL_STATIC_LIBRARIES := libboost


