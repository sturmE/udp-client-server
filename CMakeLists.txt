cmake_minimum_required(VERSION 2.8)
project(game)

SET(CMAKE_CXX_FLAGS "-std=c++0x")

include_directories(/usr/local/include)

set(LIBS    

)

set(COMMON_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/common/network/address.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/common/network/socket.cpp
)

set(COMMON_HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/common/network/address.h
    ${CMAKE_CURRENT_SOURCE_DIR}/src/common/network/socket.h   
)

# create application
add_executable(client src/client/main.cpp ${COMMON_SOURCES} ${COMMON_HEADERS})
add_executable(server src/server/main.cpp ${COMMON_SOURCES} ${COMMON_HEADERS})



