# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /tmp/tmp.g3RcABFtb7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.g3RcABFtb7/cmake-build-release-abc

# Include any dependencies generated for this target.
include CMakeFiles/container.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/container.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/container.dir/flags.make

CMakeFiles/container.dir/main.c.o: CMakeFiles/container.dir/flags.make
CMakeFiles/container.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.g3RcABFtb7/cmake-build-release-abc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/container.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/container.dir/main.c.o   -c /tmp/tmp.g3RcABFtb7/main.c

CMakeFiles/container.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/container.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.g3RcABFtb7/main.c > CMakeFiles/container.dir/main.c.i

CMakeFiles/container.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/container.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.g3RcABFtb7/main.c -o CMakeFiles/container.dir/main.c.s

CMakeFiles/container.dir/main.c.o.requires:

.PHONY : CMakeFiles/container.dir/main.c.o.requires

CMakeFiles/container.dir/main.c.o.provides: CMakeFiles/container.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/container.dir/build.make CMakeFiles/container.dir/main.c.o.provides.build
.PHONY : CMakeFiles/container.dir/main.c.o.provides

CMakeFiles/container.dir/main.c.o.provides.build: CMakeFiles/container.dir/main.c.o


CMakeFiles/container.dir/util.c.o: CMakeFiles/container.dir/flags.make
CMakeFiles/container.dir/util.c.o: ../util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.g3RcABFtb7/cmake-build-release-abc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/container.dir/util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/container.dir/util.c.o   -c /tmp/tmp.g3RcABFtb7/util.c

CMakeFiles/container.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/container.dir/util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.g3RcABFtb7/util.c > CMakeFiles/container.dir/util.c.i

CMakeFiles/container.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/container.dir/util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.g3RcABFtb7/util.c -o CMakeFiles/container.dir/util.c.s

CMakeFiles/container.dir/util.c.o.requires:

.PHONY : CMakeFiles/container.dir/util.c.o.requires

CMakeFiles/container.dir/util.c.o.provides: CMakeFiles/container.dir/util.c.o.requires
	$(MAKE) -f CMakeFiles/container.dir/build.make CMakeFiles/container.dir/util.c.o.provides.build
.PHONY : CMakeFiles/container.dir/util.c.o.provides

CMakeFiles/container.dir/util.c.o.provides.build: CMakeFiles/container.dir/util.c.o


# Object files for target container
container_OBJECTS = \
"CMakeFiles/container.dir/main.c.o" \
"CMakeFiles/container.dir/util.c.o"

# External object files for target container
container_EXTERNAL_OBJECTS =

container: CMakeFiles/container.dir/main.c.o
container: CMakeFiles/container.dir/util.c.o
container: CMakeFiles/container.dir/build.make
container: CMakeFiles/container.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.g3RcABFtb7/cmake-build-release-abc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable container"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/container.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/container.dir/build: container

.PHONY : CMakeFiles/container.dir/build

CMakeFiles/container.dir/requires: CMakeFiles/container.dir/main.c.o.requires
CMakeFiles/container.dir/requires: CMakeFiles/container.dir/util.c.o.requires

.PHONY : CMakeFiles/container.dir/requires

CMakeFiles/container.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/container.dir/cmake_clean.cmake
.PHONY : CMakeFiles/container.dir/clean

CMakeFiles/container.dir/depend:
	cd /tmp/tmp.g3RcABFtb7/cmake-build-release-abc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.g3RcABFtb7 /tmp/tmp.g3RcABFtb7 /tmp/tmp.g3RcABFtb7/cmake-build-release-abc /tmp/tmp.g3RcABFtb7/cmake-build-release-abc /tmp/tmp.g3RcABFtb7/cmake-build-release-abc/CMakeFiles/container.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/container.dir/depend

