# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gael/program

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gael/program

# Include any dependencies generated for this target.
include examples/main/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include examples/main/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include examples/main/CMakeFiles/main.dir/flags.make

examples/main/CMakeFiles/main.dir/main.c.o: examples/main/CMakeFiles/main.dir/flags.make
examples/main/CMakeFiles/main.dir/main.c.o: examples/main/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gael/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/main/CMakeFiles/main.dir/main.c.o"
	cd /home/gael/program/examples/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/main.dir/main.c.o   -c /home/gael/program/examples/main/main.c

examples/main/CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	cd /home/gael/program/examples/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/gael/program/examples/main/main.c > CMakeFiles/main.dir/main.c.i

examples/main/CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	cd /home/gael/program/examples/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/gael/program/examples/main/main.c -o CMakeFiles/main.dir/main.c.s

examples/main/CMakeFiles/main.dir/main.c.o.requires:
.PHONY : examples/main/CMakeFiles/main.dir/main.c.o.requires

examples/main/CMakeFiles/main.dir/main.c.o.provides: examples/main/CMakeFiles/main.dir/main.c.o.requires
	$(MAKE) -f examples/main/CMakeFiles/main.dir/build.make examples/main/CMakeFiles/main.dir/main.c.o.provides.build
.PHONY : examples/main/CMakeFiles/main.dir/main.c.o.provides

examples/main/CMakeFiles/main.dir/main.c.o.provides.build: examples/main/CMakeFiles/main.dir/main.c.o

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

bin/main: examples/main/CMakeFiles/main.dir/main.c.o
bin/main: lib/libemokit.a
bin/main: lib/libband_waves.a
bin/main: /usr/local/lib/libmcrypt.so
bin/main: /usr/lib/i386-linux-gnu/libusb-1.0.so
bin/main: /usr/lib/libfftw3.so
bin/main: examples/main/CMakeFiles/main.dir/build.make
bin/main: examples/main/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/main"
	cd /home/gael/program/examples/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/main/CMakeFiles/main.dir/build: bin/main
.PHONY : examples/main/CMakeFiles/main.dir/build

examples/main/CMakeFiles/main.dir/requires: examples/main/CMakeFiles/main.dir/main.c.o.requires
.PHONY : examples/main/CMakeFiles/main.dir/requires

examples/main/CMakeFiles/main.dir/clean:
	cd /home/gael/program/examples/main && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : examples/main/CMakeFiles/main.dir/clean

examples/main/CMakeFiles/main.dir/depend:
	cd /home/gael/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gael/program /home/gael/program/examples/main /home/gael/program /home/gael/program/examples/main /home/gael/program/examples/main/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/main/CMakeFiles/main.dir/depend

