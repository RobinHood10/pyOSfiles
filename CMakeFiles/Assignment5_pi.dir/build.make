# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/pi/Documents/CS3100/Assignment5_pi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Documents/CS3100/Assignment5_pi

# Include any dependencies generated for this target.
include CMakeFiles/Assignment5_pi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment5_pi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment5_pi.dir/flags.make

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o: CMakeFiles/Assignment5_pi.dir/flags.make
CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o: threadpie.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/Documents/CS3100/Assignment5_pi/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o -c /home/pi/Documents/CS3100/Assignment5_pi/threadpie.cpp

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment5_pi.dir/threadpie.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/Documents/CS3100/Assignment5_pi/threadpie.cpp > CMakeFiles/Assignment5_pi.dir/threadpie.cpp.i

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment5_pi.dir/threadpie.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/Documents/CS3100/Assignment5_pi/threadpie.cpp -o CMakeFiles/Assignment5_pi.dir/threadpie.cpp.s

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.requires:
.PHONY : CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.requires

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.provides: CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment5_pi.dir/build.make CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.provides

CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.provides.build: CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o: CMakeFiles/Assignment5_pi.dir/flags.make
CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o: ComputePiDigit.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/Documents/CS3100/Assignment5_pi/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o -c /home/pi/Documents/CS3100/Assignment5_pi/ComputePiDigit.cpp

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/Documents/CS3100/Assignment5_pi/ComputePiDigit.cpp > CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.i

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/Documents/CS3100/Assignment5_pi/ComputePiDigit.cpp -o CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.s

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.requires:
.PHONY : CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.requires

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.provides: CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment5_pi.dir/build.make CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.provides

CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.provides.build: CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o

# Object files for target Assignment5_pi
Assignment5_pi_OBJECTS = \
"CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o" \
"CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o"

# External object files for target Assignment5_pi
Assignment5_pi_EXTERNAL_OBJECTS =

Assignment5_pi: CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o
Assignment5_pi: CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o
Assignment5_pi: CMakeFiles/Assignment5_pi.dir/build.make
Assignment5_pi: CMakeFiles/Assignment5_pi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Assignment5_pi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Assignment5_pi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment5_pi.dir/build: Assignment5_pi
.PHONY : CMakeFiles/Assignment5_pi.dir/build

CMakeFiles/Assignment5_pi.dir/requires: CMakeFiles/Assignment5_pi.dir/threadpie.cpp.o.requires
CMakeFiles/Assignment5_pi.dir/requires: CMakeFiles/Assignment5_pi.dir/ComputePiDigit.cpp.o.requires
.PHONY : CMakeFiles/Assignment5_pi.dir/requires

CMakeFiles/Assignment5_pi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assignment5_pi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assignment5_pi.dir/clean

CMakeFiles/Assignment5_pi.dir/depend:
	cd /home/pi/Documents/CS3100/Assignment5_pi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/CS3100/Assignment5_pi /home/pi/Documents/CS3100/Assignment5_pi /home/pi/Documents/CS3100/Assignment5_pi /home/pi/Documents/CS3100/Assignment5_pi /home/pi/Documents/CS3100/Assignment5_pi/CMakeFiles/Assignment5_pi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Assignment5_pi.dir/depend
