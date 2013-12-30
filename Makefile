# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eugene.sturm/projects/boom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eugene.sturm/projects/boom

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/2.8.12.1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/2.8.12.1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/eugene.sturm/projects/boom/CMakeFiles /Users/eugene.sturm/projects/boom/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/eugene.sturm/projects/boom/CMakeFiles 0
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
# Target rules for targets named bin/client

# Build rule for target.
bin/client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bin/client
.PHONY : bin/client

# fast build rule for target.
bin/client/fast:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/build
.PHONY : bin/client/fast

#=============================================================================
# Target rules for targets named bin/server

# Build rule for target.
bin/server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bin/server
.PHONY : bin/server

# fast build rule for target.
bin/server/fast:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/build
.PHONY : bin/server/fast

#=============================================================================
# Target rules for targets named common

# Build rule for target.
common: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 common
.PHONY : common

# fast build rule for target.
common/fast:
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/build
.PHONY : common/fast

src/client/main.o: src/client/main.cpp.o
.PHONY : src/client/main.o

# target to build an object file
src/client/main.cpp.o:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/main.cpp.o
.PHONY : src/client/main.cpp.o

src/client/main.i: src/client/main.cpp.i
.PHONY : src/client/main.i

# target to preprocess a source file
src/client/main.cpp.i:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/main.cpp.i
.PHONY : src/client/main.cpp.i

src/client/main.s: src/client/main.cpp.s
.PHONY : src/client/main.s

# target to generate assembly for a file
src/client/main.cpp.s:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/main.cpp.s
.PHONY : src/client/main.cpp.s

src/client/network.o: src/client/network.cpp.o
.PHONY : src/client/network.o

# target to build an object file
src/client/network.cpp.o:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/network.cpp.o
.PHONY : src/client/network.cpp.o

src/client/network.i: src/client/network.cpp.i
.PHONY : src/client/network.i

# target to preprocess a source file
src/client/network.cpp.i:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/network.cpp.i
.PHONY : src/client/network.cpp.i

src/client/network.s: src/client/network.cpp.s
.PHONY : src/client/network.s

# target to generate assembly for a file
src/client/network.cpp.s:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/network.cpp.s
.PHONY : src/client/network.cpp.s

src/client/socket.o: src/client/socket.cpp.o
.PHONY : src/client/socket.o

# target to build an object file
src/client/socket.cpp.o:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/socket.cpp.o
.PHONY : src/client/socket.cpp.o

src/client/socket.i: src/client/socket.cpp.i
.PHONY : src/client/socket.i

# target to preprocess a source file
src/client/socket.cpp.i:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/socket.cpp.i
.PHONY : src/client/socket.cpp.i

src/client/socket.s: src/client/socket.cpp.s
.PHONY : src/client/socket.s

# target to generate assembly for a file
src/client/socket.cpp.s:
	$(MAKE) -f CMakeFiles/bin/client.dir/build.make CMakeFiles/bin/client.dir/src/client/socket.cpp.s
.PHONY : src/client/socket.cpp.s

src/common/network/net_socket.o: src/common/network/net_socket.cpp.o
.PHONY : src/common/network/net_socket.o

# target to build an object file
src/common/network/net_socket.cpp.o:
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/src/common/network/net_socket.cpp.o
.PHONY : src/common/network/net_socket.cpp.o

src/common/network/net_socket.i: src/common/network/net_socket.cpp.i
.PHONY : src/common/network/net_socket.i

# target to preprocess a source file
src/common/network/net_socket.cpp.i:
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/src/common/network/net_socket.cpp.i
.PHONY : src/common/network/net_socket.cpp.i

src/common/network/net_socket.s: src/common/network/net_socket.cpp.s
.PHONY : src/common/network/net_socket.s

# target to generate assembly for a file
src/common/network/net_socket.cpp.s:
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/src/common/network/net_socket.cpp.s
.PHONY : src/common/network/net_socket.cpp.s

src/server/main.o: src/server/main.cpp.o
.PHONY : src/server/main.o

# target to build an object file
src/server/main.cpp.o:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/main.cpp.o
.PHONY : src/server/main.cpp.o

src/server/main.i: src/server/main.cpp.i
.PHONY : src/server/main.i

# target to preprocess a source file
src/server/main.cpp.i:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/main.cpp.i
.PHONY : src/server/main.cpp.i

src/server/main.s: src/server/main.cpp.s
.PHONY : src/server/main.s

# target to generate assembly for a file
src/server/main.cpp.s:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/main.cpp.s
.PHONY : src/server/main.cpp.s

src/server/network.o: src/server/network.cpp.o
.PHONY : src/server/network.o

# target to build an object file
src/server/network.cpp.o:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/network.cpp.o
.PHONY : src/server/network.cpp.o

src/server/network.i: src/server/network.cpp.i
.PHONY : src/server/network.i

# target to preprocess a source file
src/server/network.cpp.i:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/network.cpp.i
.PHONY : src/server/network.cpp.i

src/server/network.s: src/server/network.cpp.s
.PHONY : src/server/network.s

# target to generate assembly for a file
src/server/network.cpp.s:
	$(MAKE) -f CMakeFiles/bin/server.dir/build.make CMakeFiles/bin/server.dir/src/server/network.cpp.s
.PHONY : src/server/network.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... bin/client"
	@echo "... bin/server"
	@echo "... common"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... src/client/main.o"
	@echo "... src/client/main.i"
	@echo "... src/client/main.s"
	@echo "... src/client/network.o"
	@echo "... src/client/network.i"
	@echo "... src/client/network.s"
	@echo "... src/client/socket.o"
	@echo "... src/client/socket.i"
	@echo "... src/client/socket.s"
	@echo "... src/common/network/net_socket.o"
	@echo "... src/common/network/net_socket.i"
	@echo "... src/common/network/net_socket.s"
	@echo "... src/server/main.o"
	@echo "... src/server/main.i"
	@echo "... src/server/main.s"
	@echo "... src/server/network.o"
	@echo "... src/server/network.i"
	@echo "... src/server/network.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

