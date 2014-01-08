cmake_minimum_required(VERSION 2.8)
project(game)

SET(CMAKE_CXX_FLAGS "-std=c++0x")

#### Common
file(GLOB NETWORK_SRCS src/common/network/*.cpp)
file(GLOB COMMON_SRCS src/common/*.cpp)
add_library(common STATIC ${NETWORK_SRCS} ${COMMON_SRCS})

#### Build client

# grab opengl
find_package(OpenGL REQUIRED)

# needed for demo app on OSX
find_library(COCOA_LIBRARY Cocoa)
find_library(COCOAIO_LIBRARY IOKit)
    
# set include directories
include_directories( ${OPENGL_INCLUDE_DIRS} include src src/include)    

# application
file(GLOB CLIENT_SRCS src/client/*.cpp)
add_executable(bin/client src/client/main.cpp ${CLIENT_SRCS})

target_link_libraries(bin/client common ${COCOA_LIBRARY} ${COCOAIO_LIBRARY} glfw3 glew ${OPENGL_LIBRARIES})


#### Build server

file(GLOB SERVER_SRCS src/server/*.cpp)
add_executable(bin/server src/server/main.cpp ${SERVER_SRCS})
target_link_libraries(bin/server common)



