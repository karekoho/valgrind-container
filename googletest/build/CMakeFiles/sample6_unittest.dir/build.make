# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kare/devel/googletest/googletest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kare/devel/googletest/googletest/build

# Include any dependencies generated for this target.
include CMakeFiles/sample6_unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sample6_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sample6_unittest.dir/flags.make

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o: CMakeFiles/sample6_unittest.dir/flags.make
CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o: ../samples/sample6_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kare/devel/googletest/googletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o -c /Users/kare/devel/googletest/googletest/samples/sample6_unittest.cc

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kare/devel/googletest/googletest/samples/sample6_unittest.cc > CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.i

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kare/devel/googletest/googletest/samples/sample6_unittest.cc -o CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.s

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.requires:

.PHONY : CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.requires

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.provides: CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.requires
	$(MAKE) -f CMakeFiles/sample6_unittest.dir/build.make CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.provides.build
.PHONY : CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.provides

CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.provides.build: CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o


# Object files for target sample6_unittest
sample6_unittest_OBJECTS = \
"CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o"

# External object files for target sample6_unittest
sample6_unittest_EXTERNAL_OBJECTS =

sample6_unittest: CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o
sample6_unittest: CMakeFiles/sample6_unittest.dir/build.make
sample6_unittest: libgtest_main.a
sample6_unittest: libgtest.a
sample6_unittest: CMakeFiles/sample6_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kare/devel/googletest/googletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample6_unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample6_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sample6_unittest.dir/build: sample6_unittest

.PHONY : CMakeFiles/sample6_unittest.dir/build

CMakeFiles/sample6_unittest.dir/requires: CMakeFiles/sample6_unittest.dir/samples/sample6_unittest.cc.o.requires

.PHONY : CMakeFiles/sample6_unittest.dir/requires

CMakeFiles/sample6_unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sample6_unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sample6_unittest.dir/clean

CMakeFiles/sample6_unittest.dir/depend:
	cd /Users/kare/devel/googletest/googletest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kare/devel/googletest/googletest /Users/kare/devel/googletest/googletest /Users/kare/devel/googletest/googletest/build /Users/kare/devel/googletest/googletest/build /Users/kare/devel/googletest/googletest/build/CMakeFiles/sample6_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sample6_unittest.dir/depend

