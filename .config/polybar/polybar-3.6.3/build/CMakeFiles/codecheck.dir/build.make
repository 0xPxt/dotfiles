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

# Utility rule file for codecheck.

# Include the progress variables for this target.
include CMakeFiles/codecheck.dir/progress.make

codecheck: CMakeFiles/codecheck.dir/build.make
	../common/clang-tidy.sh /home/aleix/.config/polybar/polybar-3.6.3/build /home/aleix/.config/polybar/polybar-3.6.3/src /home/aleix/.config/polybar/polybar-3.6.3/include /home/aleix/.config/polybar/polybar-3.6.3/tests
.PHONY : codecheck

# Rule to build all files generated by this target.
CMakeFiles/codecheck.dir/build: codecheck

.PHONY : CMakeFiles/codecheck.dir/build

CMakeFiles/codecheck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/codecheck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/codecheck.dir/clean

CMakeFiles/codecheck.dir/depend:
	cd /home/aleix/.config/polybar/polybar-3.6.3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleix/.config/polybar/polybar-3.6.3 /home/aleix/.config/polybar/polybar-3.6.3 /home/aleix/.config/polybar/polybar-3.6.3/build /home/aleix/.config/polybar/polybar-3.6.3/build /home/aleix/.config/polybar/polybar-3.6.3/build/CMakeFiles/codecheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/codecheck.dir/depend

