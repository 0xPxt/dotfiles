# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aleix/.config/polybar/polybar-3.6.3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aleix/.config/polybar/polybar-3.6.3/build

# Include any dependencies generated for this target.
include bin/CMakeFiles/polybar-msg.dir/depend.make

# Include the progress variables for this target.
include bin/CMakeFiles/polybar-msg.dir/progress.make

# Include the compile flags for this target's objects.
include bin/CMakeFiles/polybar-msg.dir/flags.make

bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o: bin/CMakeFiles/polybar-msg.dir/flags.make
bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o: ../src/polybar-msg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aleix/.config/polybar/polybar-3.6.3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o"
	cd /home/aleix/.config/polybar/polybar-3.6.3/build/bin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o -c /home/aleix/.config/polybar/polybar-3.6.3/src/polybar-msg.cpp

bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polybar-msg.dir/polybar-msg.cpp.i"
	cd /home/aleix/.config/polybar/polybar-3.6.3/build/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aleix/.config/polybar/polybar-3.6.3/src/polybar-msg.cpp > CMakeFiles/polybar-msg.dir/polybar-msg.cpp.i

bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polybar-msg.dir/polybar-msg.cpp.s"
	cd /home/aleix/.config/polybar/polybar-3.6.3/build/bin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aleix/.config/polybar/polybar-3.6.3/src/polybar-msg.cpp -o CMakeFiles/polybar-msg.dir/polybar-msg.cpp.s

# Object files for target polybar-msg
polybar__msg_OBJECTS = \
"CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o"

# External object files for target polybar-msg
polybar__msg_EXTERNAL_OBJECTS =

bin/polybar-msg: bin/CMakeFiles/polybar-msg.dir/polybar-msg.cpp.o
bin/polybar-msg: bin/CMakeFiles/polybar-msg.dir/build.make
bin/polybar-msg: libs/libpoly.a
bin/polybar-msg: lib/xpp/libxpp.a
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-ewmh.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-icccm.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-util.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-image.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-randr.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-composite.so
bin/polybar-msg: /usr/lib/x86_64-linux-gnu/libxcb-xkb.so
bin/polybar-msg: lib/i3ipcpp/libi3ipc++.a
bin/polybar-msg: bin/CMakeFiles/polybar-msg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aleix/.config/polybar/polybar-3.6.3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable polybar-msg"
	cd /home/aleix/.config/polybar/polybar-3.6.3/build/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polybar-msg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/CMakeFiles/polybar-msg.dir/build: bin/polybar-msg

.PHONY : bin/CMakeFiles/polybar-msg.dir/build

bin/CMakeFiles/polybar-msg.dir/clean:
	cd /home/aleix/.config/polybar/polybar-3.6.3/build/bin && $(CMAKE_COMMAND) -P CMakeFiles/polybar-msg.dir/cmake_clean.cmake
.PHONY : bin/CMakeFiles/polybar-msg.dir/clean

bin/CMakeFiles/polybar-msg.dir/depend:
	cd /home/aleix/.config/polybar/polybar-3.6.3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleix/.config/polybar/polybar-3.6.3 /home/aleix/.config/polybar/polybar-3.6.3/src /home/aleix/.config/polybar/polybar-3.6.3/build /home/aleix/.config/polybar/polybar-3.6.3/build/bin /home/aleix/.config/polybar/polybar-3.6.3/build/bin/CMakeFiles/polybar-msg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/CMakeFiles/polybar-msg.dir/depend

