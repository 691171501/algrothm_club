# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/jingzheng/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/jingzheng/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jingzheng/work_project/algorithm-club/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jingzheng/work_project/algorithm-club/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RBTree.test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RBTree.test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RBTree.test.dir/flags.make

CMakeFiles/RBTree.test.dir/RBTree.test.cc.o: CMakeFiles/RBTree.test.dir/flags.make
CMakeFiles/RBTree.test.dir/RBTree.test.cc.o: ../RBTree.test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jingzheng/work_project/algorithm-club/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RBTree.test.dir/RBTree.test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RBTree.test.dir/RBTree.test.cc.o -c /home/jingzheng/work_project/algorithm-club/src/RBTree.test.cc

CMakeFiles/RBTree.test.dir/RBTree.test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RBTree.test.dir/RBTree.test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jingzheng/work_project/algorithm-club/src/RBTree.test.cc > CMakeFiles/RBTree.test.dir/RBTree.test.cc.i

CMakeFiles/RBTree.test.dir/RBTree.test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RBTree.test.dir/RBTree.test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jingzheng/work_project/algorithm-club/src/RBTree.test.cc -o CMakeFiles/RBTree.test.dir/RBTree.test.cc.s

# Object files for target RBTree.test
RBTree_test_OBJECTS = \
"CMakeFiles/RBTree.test.dir/RBTree.test.cc.o"

# External object files for target RBTree.test
RBTree_test_EXTERNAL_OBJECTS =

RBTree.test: CMakeFiles/RBTree.test.dir/RBTree.test.cc.o
RBTree.test: CMakeFiles/RBTree.test.dir/build.make
RBTree.test: CMakeFiles/RBTree.test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jingzheng/work_project/algorithm-club/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RBTree.test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RBTree.test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RBTree.test.dir/build: RBTree.test

.PHONY : CMakeFiles/RBTree.test.dir/build

CMakeFiles/RBTree.test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RBTree.test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RBTree.test.dir/clean

CMakeFiles/RBTree.test.dir/depend:
	cd /home/jingzheng/work_project/algorithm-club/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jingzheng/work_project/algorithm-club/src /home/jingzheng/work_project/algorithm-club/src /home/jingzheng/work_project/algorithm-club/src/cmake-build-debug /home/jingzheng/work_project/algorithm-club/src/cmake-build-debug /home/jingzheng/work_project/algorithm-club/src/cmake-build-debug/CMakeFiles/RBTree.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RBTree.test.dir/depend

