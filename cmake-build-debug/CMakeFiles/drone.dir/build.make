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
CMAKE_SOURCE_DIR = /home/pi/Desktop/Drone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Drone/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/drone.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/drone.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/drone.dir/flags.make

CMakeFiles/drone.dir/src/main.cpp.o: CMakeFiles/drone.dir/flags.make
CMakeFiles/drone.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/drone.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drone.dir/src/main.cpp.o -c /home/pi/Desktop/Drone/src/main.cpp

CMakeFiles/drone.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drone.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Drone/src/main.cpp > CMakeFiles/drone.dir/src/main.cpp.i

CMakeFiles/drone.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drone.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Drone/src/main.cpp -o CMakeFiles/drone.dir/src/main.cpp.s

CMakeFiles/drone.dir/src/gyro.cpp.o: CMakeFiles/drone.dir/flags.make
CMakeFiles/drone.dir/src/gyro.cpp.o: ../src/gyro.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/drone.dir/src/gyro.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drone.dir/src/gyro.cpp.o -c /home/pi/Desktop/Drone/src/gyro.cpp

CMakeFiles/drone.dir/src/gyro.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drone.dir/src/gyro.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Drone/src/gyro.cpp > CMakeFiles/drone.dir/src/gyro.cpp.i

CMakeFiles/drone.dir/src/gyro.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drone.dir/src/gyro.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Drone/src/gyro.cpp -o CMakeFiles/drone.dir/src/gyro.cpp.s

CMakeFiles/drone.dir/src/pwms.cpp.o: CMakeFiles/drone.dir/flags.make
CMakeFiles/drone.dir/src/pwms.cpp.o: ../src/pwms.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/drone.dir/src/pwms.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drone.dir/src/pwms.cpp.o -c /home/pi/Desktop/Drone/src/pwms.cpp

CMakeFiles/drone.dir/src/pwms.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drone.dir/src/pwms.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Drone/src/pwms.cpp > CMakeFiles/drone.dir/src/pwms.cpp.i

CMakeFiles/drone.dir/src/pwms.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drone.dir/src/pwms.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Drone/src/pwms.cpp -o CMakeFiles/drone.dir/src/pwms.cpp.s

CMakeFiles/drone.dir/src/joystick.cpp.o: CMakeFiles/drone.dir/flags.make
CMakeFiles/drone.dir/src/joystick.cpp.o: ../src/joystick.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/drone.dir/src/joystick.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drone.dir/src/joystick.cpp.o -c /home/pi/Desktop/Drone/src/joystick.cpp

CMakeFiles/drone.dir/src/joystick.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drone.dir/src/joystick.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Drone/src/joystick.cpp > CMakeFiles/drone.dir/src/joystick.cpp.i

CMakeFiles/drone.dir/src/joystick.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drone.dir/src/joystick.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Drone/src/joystick.cpp -o CMakeFiles/drone.dir/src/joystick.cpp.s

# Object files for target drone
drone_OBJECTS = \
"CMakeFiles/drone.dir/src/main.cpp.o" \
"CMakeFiles/drone.dir/src/gyro.cpp.o" \
"CMakeFiles/drone.dir/src/pwms.cpp.o" \
"CMakeFiles/drone.dir/src/joystick.cpp.o"

# External object files for target drone
drone_EXTERNAL_OBJECTS =

drone: CMakeFiles/drone.dir/src/main.cpp.o
drone: CMakeFiles/drone.dir/src/gyro.cpp.o
drone: CMakeFiles/drone.dir/src/pwms.cpp.o
drone: CMakeFiles/drone.dir/src/joystick.cpp.o
drone: CMakeFiles/drone.dir/build.make
drone: libdrone_lib.a
drone: CMakeFiles/drone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable drone"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/drone.dir/build: drone

.PHONY : CMakeFiles/drone.dir/build

CMakeFiles/drone.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/drone.dir/cmake_clean.cmake
.PHONY : CMakeFiles/drone.dir/clean

CMakeFiles/drone.dir/depend:
	cd /home/pi/Desktop/Drone/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Drone /home/pi/Desktop/Drone /home/pi/Desktop/Drone/cmake-build-debug /home/pi/Desktop/Drone/cmake-build-debug /home/pi/Desktop/Drone/cmake-build-debug/CMakeFiles/drone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/drone.dir/depend
