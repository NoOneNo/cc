# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/harry/tools/clion-2018.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/harry/tools/clion-2018.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/harry/priProjects/personal/cc/ccSamples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release

# Include any dependencies generated for this target.
include test-samples/CMakeFiles/testSample.dir/depend.make

# Include the progress variables for this target.
include test-samples/CMakeFiles/testSample.dir/progress.make

# Include the compile flags for this target's objects.
include test-samples/CMakeFiles/testSample.dir/flags.make

test-samples/CMakeFiles/testSample.dir/testSample.cpp.o: test-samples/CMakeFiles/testSample.dir/flags.make
test-samples/CMakeFiles/testSample.dir/testSample.cpp.o: ../test-samples/testSample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test-samples/CMakeFiles/testSample.dir/testSample.cpp.o"
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testSample.dir/testSample.cpp.o -c /home/harry/priProjects/personal/cc/ccSamples/test-samples/testSample.cpp

test-samples/CMakeFiles/testSample.dir/testSample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSample.dir/testSample.cpp.i"
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/harry/priProjects/personal/cc/ccSamples/test-samples/testSample.cpp > CMakeFiles/testSample.dir/testSample.cpp.i

test-samples/CMakeFiles/testSample.dir/testSample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSample.dir/testSample.cpp.s"
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/harry/priProjects/personal/cc/ccSamples/test-samples/testSample.cpp -o CMakeFiles/testSample.dir/testSample.cpp.s

# Object files for target testSample
testSample_OBJECTS = \
"CMakeFiles/testSample.dir/testSample.cpp.o"

# External object files for target testSample
testSample_EXTERNAL_OBJECTS =

test-samples/testSample: test-samples/CMakeFiles/testSample.dir/testSample.cpp.o
test-samples/testSample: test-samples/CMakeFiles/testSample.dir/build.make
test-samples/testSample: test-samples/CMakeFiles/testSample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testSample"
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test-samples/CMakeFiles/testSample.dir/build: test-samples/testSample

.PHONY : test-samples/CMakeFiles/testSample.dir/build

test-samples/CMakeFiles/testSample.dir/clean:
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples && $(CMAKE_COMMAND) -P CMakeFiles/testSample.dir/cmake_clean.cmake
.PHONY : test-samples/CMakeFiles/testSample.dir/clean

test-samples/CMakeFiles/testSample.dir/depend:
	cd /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/harry/priProjects/personal/cc/ccSamples /home/harry/priProjects/personal/cc/ccSamples/test-samples /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples /home/harry/priProjects/personal/cc/ccSamples/cmake-build-release/test-samples/CMakeFiles/testSample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test-samples/CMakeFiles/testSample.dir/depend
