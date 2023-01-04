cmake_minimum_required(VERSION 3.18)
project(POS2022_pong)

set(CMAKE_CXX_STANDARD 14)

add_executable(POS2022_pong main.cpp server.cpp server.h)

set(SFML_STATIC_LIBRARIES TRUE)
set(SFML_DIR ${PROJECT_SOURCE_DIR}/SFML/lib/cmake/SFML)
find_package(SFML COMPONENTS system window graphics audio network REQUIRED)

include_directories(${PROJECT_SOURCE_DIR}/SFML/include)

target_link_libraries(POS2022_pong sfml-system sfml-window sfml-graphics sfml-audio sfml-network)