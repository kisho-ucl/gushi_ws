# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/realsense/gushi_ws/src/my_video_sender

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/realsense/gushi_ws/src/build/my_video_sender

# Include any dependencies generated for this target.
include CMakeFiles/image_processor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/image_processor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/image_processor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/image_processor.dir/flags.make

CMakeFiles/image_processor.dir/src/image_processor.c.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/image_processor.c.o: /home/realsense/gushi_ws/src/my_video_sender/src/image_processor.c
CMakeFiles/image_processor.dir/src/image_processor.c.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/realsense/gushi_ws/src/build/my_video_sender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/image_processor.dir/src/image_processor.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/image_processor.c.o -MF CMakeFiles/image_processor.dir/src/image_processor.c.o.d -o CMakeFiles/image_processor.dir/src/image_processor.c.o -c /home/realsense/gushi_ws/src/my_video_sender/src/image_processor.c

CMakeFiles/image_processor.dir/src/image_processor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/image_processor.dir/src/image_processor.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/realsense/gushi_ws/src/my_video_sender/src/image_processor.c > CMakeFiles/image_processor.dir/src/image_processor.c.i

CMakeFiles/image_processor.dir/src/image_processor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/image_processor.dir/src/image_processor.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/realsense/gushi_ws/src/my_video_sender/src/image_processor.c -o CMakeFiles/image_processor.dir/src/image_processor.c.s

# Object files for target image_processor
image_processor_OBJECTS = \
"CMakeFiles/image_processor.dir/src/image_processor.c.o"

# External object files for target image_processor
image_processor_EXTERNAL_OBJECTS =

libimage_processor.a: CMakeFiles/image_processor.dir/src/image_processor.c.o
libimage_processor.a: CMakeFiles/image_processor.dir/build.make
libimage_processor.a: CMakeFiles/image_processor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/realsense/gushi_ws/src/build/my_video_sender/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libimage_processor.a"
	$(CMAKE_COMMAND) -P CMakeFiles/image_processor.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_processor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/image_processor.dir/build: libimage_processor.a
.PHONY : CMakeFiles/image_processor.dir/build

CMakeFiles/image_processor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/image_processor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/image_processor.dir/clean

CMakeFiles/image_processor.dir/depend:
	cd /home/realsense/gushi_ws/src/build/my_video_sender && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/realsense/gushi_ws/src/my_video_sender /home/realsense/gushi_ws/src/my_video_sender /home/realsense/gushi_ws/src/build/my_video_sender /home/realsense/gushi_ws/src/build/my_video_sender /home/realsense/gushi_ws/src/build/my_video_sender/CMakeFiles/image_processor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/image_processor.dir/depend

