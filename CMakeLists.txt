cmake_minimum_required(VERSION 3.12)
project(Drone VERSION 1.0.0)

set(GCC_COVERAGE_COMPILE_FLAGS "-Wall -lwiringPi -lpthread -lSDL2")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}" )


add_library(drone_lib src/gyro.cpp src/pwms.cpp src/joystick.cpp)
target_include_directories(drone_lib PUBLIC inc/)

add_executable(drone src/main.cpp src/gyro.cpp src/pwms.cpp src/joystick.cpp)
target_link_libraries(drone drone_lib)
