# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/yann/Documents/Projects/Current/OS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yann/Documents/Projects/Current/OS/build

# Include any dependencies generated for this target.
include src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/depend.make

# Include the progress variables for this target.
include src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/progress.make

# Include the compile flags for this target's objects.
include src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/flags.make

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/flags.make
src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o: ../src/arch/x86_64/kernel/core.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yann/Documents/Projects/Current/OS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KERNEL.dir/core.cc.o -c /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/core.cc

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KERNEL.dir/core.cc.i"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/core.cc > CMakeFiles/KERNEL.dir/core.cc.i

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KERNEL.dir/core.cc.s"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/core.cc -o CMakeFiles/KERNEL.dir/core.cc.s

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.requires:

.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.requires

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.provides: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.requires
	$(MAKE) -f src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/build.make src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.provides.build
.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.provides

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.provides.build: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o


src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/flags.make
src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o: ../src/arch/x86_64/kernel/drivers/vga.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yann/Documents/Projects/Current/OS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KERNEL.dir/drivers/vga.cc.o -c /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/drivers/vga.cc

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KERNEL.dir/drivers/vga.cc.i"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/drivers/vga.cc > CMakeFiles/KERNEL.dir/drivers/vga.cc.i

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KERNEL.dir/drivers/vga.cc.s"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel/drivers/vga.cc -o CMakeFiles/KERNEL.dir/drivers/vga.cc.s

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.requires:

.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.requires

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.provides: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.requires
	$(MAKE) -f src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/build.make src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.provides.build
.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.provides

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.provides.build: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o


# Object files for target KERNEL
KERNEL_OBJECTS = \
"CMakeFiles/KERNEL.dir/core.cc.o" \
"CMakeFiles/KERNEL.dir/drivers/vga.cc.o"

# External object files for target KERNEL
KERNEL_EXTERNAL_OBJECTS =

src/arch/x86_64/kernel/libKERNEL.a: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o
src/arch/x86_64/kernel/libKERNEL.a: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o
src/arch/x86_64/kernel/libKERNEL.a: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/build.make
src/arch/x86_64/kernel/libKERNEL.a: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yann/Documents/Projects/Current/OS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libKERNEL.a"
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && $(CMAKE_COMMAND) -P CMakeFiles/KERNEL.dir/cmake_clean_target.cmake
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KERNEL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/build: src/arch/x86_64/kernel/libKERNEL.a

.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/build

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/requires: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/core.cc.o.requires
src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/requires: src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/drivers/vga.cc.o.requires

.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/requires

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/clean:
	cd /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel && $(CMAKE_COMMAND) -P CMakeFiles/KERNEL.dir/cmake_clean.cmake
.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/clean

src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/depend:
	cd /home/yann/Documents/Projects/Current/OS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yann/Documents/Projects/Current/OS /home/yann/Documents/Projects/Current/OS/src/arch/x86_64/kernel /home/yann/Documents/Projects/Current/OS/build /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel /home/yann/Documents/Projects/Current/OS/build/src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/arch/x86_64/kernel/CMakeFiles/KERNEL.dir/depend

