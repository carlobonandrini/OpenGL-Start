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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/carlobonandrini/develop/OpenGL-Start

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/carlobonandrini/develop/OpenGL-Start/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLStart.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLStart.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLStart.dir/flags.make

CMakeFiles/OpenGLStart.dir/src/main.cpp.o: CMakeFiles/OpenGLStart.dir/flags.make
CMakeFiles/OpenGLStart.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/carlobonandrini/develop/OpenGL-Start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGLStart.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLStart.dir/src/main.cpp.o -c /Users/carlobonandrini/develop/OpenGL-Start/src/main.cpp

CMakeFiles/OpenGLStart.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLStart.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/carlobonandrini/develop/OpenGL-Start/src/main.cpp > CMakeFiles/OpenGLStart.dir/src/main.cpp.i

CMakeFiles/OpenGLStart.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLStart.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/carlobonandrini/develop/OpenGL-Start/src/main.cpp -o CMakeFiles/OpenGLStart.dir/src/main.cpp.s

# Object files for target OpenGLStart
OpenGLStart_OBJECTS = \
"CMakeFiles/OpenGLStart.dir/src/main.cpp.o"

# External object files for target OpenGLStart
OpenGLStart_EXTERNAL_OBJECTS =

bin/OpenGLStart: CMakeFiles/OpenGLStart.dir/src/main.cpp.o
bin/OpenGLStart: CMakeFiles/OpenGLStart.dir/build.make
bin/OpenGLStart: ../dependencies/glew-2.1.0/lib/libGLEW.2.1.0.dylib
bin/OpenGLStart: dependencies/glfw-3.3/src/libglfw3.a
bin/OpenGLStart: CMakeFiles/OpenGLStart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/carlobonandrini/develop/OpenGL-Start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/OpenGLStart"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGLStart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLStart.dir/build: bin/OpenGLStart

.PHONY : CMakeFiles/OpenGLStart.dir/build

CMakeFiles/OpenGLStart.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGLStart.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLStart.dir/clean

CMakeFiles/OpenGLStart.dir/depend:
	cd /Users/carlobonandrini/develop/OpenGL-Start/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/carlobonandrini/develop/OpenGL-Start /Users/carlobonandrini/develop/OpenGL-Start /Users/carlobonandrini/develop/OpenGL-Start/build /Users/carlobonandrini/develop/OpenGL-Start/build /Users/carlobonandrini/develop/OpenGL-Start/build/CMakeFiles/OpenGLStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGLStart.dir/depend
