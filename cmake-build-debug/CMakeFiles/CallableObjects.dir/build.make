# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/kaushal/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/kaushal/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kaushal/CLionProjects/CallableObjects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kaushal/CLionProjects/CallableObjects/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CallableObjects.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CallableObjects.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CallableObjects.dir/flags.make

CMakeFiles/CallableObjects.dir/main.cpp.o: CMakeFiles/CallableObjects.dir/flags.make
CMakeFiles/CallableObjects.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kaushal/CLionProjects/CallableObjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CallableObjects.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CallableObjects.dir/main.cpp.o -c /home/kaushal/CLionProjects/CallableObjects/main.cpp

CMakeFiles/CallableObjects.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CallableObjects.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kaushal/CLionProjects/CallableObjects/main.cpp > CMakeFiles/CallableObjects.dir/main.cpp.i

CMakeFiles/CallableObjects.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CallableObjects.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kaushal/CLionProjects/CallableObjects/main.cpp -o CMakeFiles/CallableObjects.dir/main.cpp.s

# Object files for target CallableObjects
CallableObjects_OBJECTS = \
"CMakeFiles/CallableObjects.dir/main.cpp.o"

# External object files for target CallableObjects
CallableObjects_EXTERNAL_OBJECTS =

CallableObjects: CMakeFiles/CallableObjects.dir/main.cpp.o
CallableObjects: CMakeFiles/CallableObjects.dir/build.make
CallableObjects: CMakeFiles/CallableObjects.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kaushal/CLionProjects/CallableObjects/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CallableObjects"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CallableObjects.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CallableObjects.dir/build: CallableObjects

.PHONY : CMakeFiles/CallableObjects.dir/build

CMakeFiles/CallableObjects.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CallableObjects.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CallableObjects.dir/clean

CMakeFiles/CallableObjects.dir/depend:
	cd /home/kaushal/CLionProjects/CallableObjects/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kaushal/CLionProjects/CallableObjects /home/kaushal/CLionProjects/CallableObjects /home/kaushal/CLionProjects/CallableObjects/cmake-build-debug /home/kaushal/CLionProjects/CallableObjects/cmake-build-debug /home/kaushal/CLionProjects/CallableObjects/cmake-build-debug/CMakeFiles/CallableObjects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CallableObjects.dir/depend

