# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build

# Include any dependencies generated for this target.
include CMakeFiles/munmap.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/munmap.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/munmap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/munmap.dir/flags.make

CMakeFiles/munmap.dir/src/oscomp/munmap.c.o: CMakeFiles/munmap.dir/flags.make
CMakeFiles/munmap.dir/src/oscomp/munmap.c.o: ../src/oscomp/munmap.c
CMakeFiles/munmap.dir/src/oscomp/munmap.c.o: CMakeFiles/munmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/munmap.dir/src/oscomp/munmap.c.o"
	loongarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/munmap.dir/src/oscomp/munmap.c.o -MF CMakeFiles/munmap.dir/src/oscomp/munmap.c.o.d -o CMakeFiles/munmap.dir/src/oscomp/munmap.c.o -c /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/src/oscomp/munmap.c

CMakeFiles/munmap.dir/src/oscomp/munmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/munmap.dir/src/oscomp/munmap.c.i"
	loongarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/src/oscomp/munmap.c > CMakeFiles/munmap.dir/src/oscomp/munmap.c.i

CMakeFiles/munmap.dir/src/oscomp/munmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/munmap.dir/src/oscomp/munmap.c.s"
	loongarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/src/oscomp/munmap.c -o CMakeFiles/munmap.dir/src/oscomp/munmap.c.s

# Object files for target munmap
munmap_OBJECTS = \
"CMakeFiles/munmap.dir/src/oscomp/munmap.c.o"

# External object files for target munmap
munmap_EXTERNAL_OBJECTS =

loongarch64/munmap: CMakeFiles/munmap.dir/src/oscomp/munmap.c.o
loongarch64/munmap: CMakeFiles/munmap.dir/build.make
loongarch64/munmap: libulib.a
loongarch64/munmap: CMakeFiles/munmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable loongarch64/munmap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/munmap.dir/link.txt --verbose=$(VERBOSE)
	mkdir -p asm
	loongarch64-linux-gnu-objdump -d -S /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/munmap > asm/munmap.asm
	mkdir -p bin
	loongarch64-linux-gnu-objcopy -O binary /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/munmap bin/munmap.bin --set-section-flags .bss=alloc,load,contents

# Rule to build all files generated by this target.
CMakeFiles/munmap.dir/build: loongarch64/munmap
.PHONY : CMakeFiles/munmap.dir/build

CMakeFiles/munmap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/munmap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/munmap.dir/clean

CMakeFiles/munmap.dir/depend:
	cd /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build /home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/CMakeFiles/munmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/munmap.dir/depend

