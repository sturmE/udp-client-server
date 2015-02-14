# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:
.PHONY : .NOTPARALLEL

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eugene.sturm/projects/misc/udp-client-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eugene.sturm/projects/misc/udp-client-server

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.1.1_1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/eugene.sturm/projects/misc/udp-client-server/CMakeFiles /Users/eugene.sturm/projects/misc/udp-client-server/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/eugene.sturm/projects/misc/udp-client-server/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named client

# Build rule for target.
client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 client
.PHONY : client

# fast build rule for target.
client/fast:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/build
.PHONY : client/fast

#=============================================================================
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

src/client/main.o: src/client/main.cpp.o
.PHONY : src/client/main.o

# target to build an object file
src/client/main.cpp.o:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client/main.cpp.o
.PHONY : src/client/main.cpp.o

src/client/main.i: src/client/main.cpp.i
.PHONY : src/client/main.i

# target to preprocess a source file
src/client/main.cpp.i:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client/main.cpp.i
.PHONY : src/client/main.cpp.i

src/client/main.s: src/client/main.cpp.s
.PHONY : src/client/main.s

# target to generate assembly for a file
src/client/main.cpp.s:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client/main.cpp.s
.PHONY : src/client/main.cpp.s

src/common/network/address.o: src/common/network/address.cpp.o
.PHONY : src/common/network/address.o

# target to build an object file
src/common/network/address.cpp.o:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/address.cpp.o
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/address.cpp.o
.PHONY : src/common/network/address.cpp.o

src/common/network/address.i: src/common/network/address.cpp.i
.PHONY : src/common/network/address.i

# target to preprocess a source file
src/common/network/address.cpp.i:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/address.cpp.i
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/address.cpp.i
.PHONY : src/common/network/address.cpp.i

src/common/network/address.s: src/common/network/address.cpp.s
.PHONY : src/common/network/address.s

# target to generate assembly for a file
src/common/network/address.cpp.s:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/address.cpp.s
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/address.cpp.s
.PHONY : src/common/network/address.cpp.s

src/common/network/socket.o: src/common/network/socket.cpp.o
.PHONY : src/common/network/socket.o

# target to build an object file
src/common/network/socket.cpp.o:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/socket.cpp.o
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/socket.cpp.o
.PHONY : src/common/network/socket.cpp.o

src/common/network/socket.i: src/common/network/socket.cpp.i
.PHONY : src/common/network/socket.i

# target to preprocess a source file
src/common/network/socket.cpp.i:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/socket.cpp.i
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/socket.cpp.i
.PHONY : src/common/network/socket.cpp.i

src/common/network/socket.s: src/common/network/socket.cpp.s
.PHONY : src/common/network/socket.s

# target to generate assembly for a file
src/common/network/socket.cpp.s:
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/common/network/socket.cpp.s
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/common/network/socket.cpp.s
.PHONY : src/common/network/socket.cpp.s

src/server/main.o: src/server/main.cpp.o
.PHONY : src/server/main.o

# target to build an object file
src/server/main.cpp.o:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server/main.cpp.o
.PHONY : src/server/main.cpp.o

src/server/main.i: src/server/main.cpp.i
.PHONY : src/server/main.i

# target to preprocess a source file
src/server/main.cpp.i:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server/main.cpp.i
.PHONY : src/server/main.cpp.i

src/server/main.s: src/server/main.cpp.s
.PHONY : src/server/main.s

# target to generate assembly for a file
src/server/main.cpp.s:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server/main.cpp.s
.PHONY : src/server/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... client"
	@echo "... server"
	@echo "... src/client/main.o"
	@echo "... src/client/main.i"
	@echo "... src/client/main.s"
	@echo "... src/common/network/address.o"
	@echo "... src/common/network/address.i"
	@echo "... src/common/network/address.s"
	@echo "... src/common/network/socket.o"
	@echo "... src/common/network/socket.i"
	@echo "... src/common/network/socket.s"
	@echo "... src/server/main.o"
	@echo "... src/server/main.i"
	@echo "... src/server/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

