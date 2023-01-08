cmake_minimum_required(VERSION 3.18)
project(POS2022_pong)

set(CMAKE_CXX_STANDARD 14)

add_executable(POS2022_pong main.cpp server/server.cpp server/server.h client/client.cpp client/client.h Ball/Ball.cpp Ball/Ball.h
        Platform/Platform.cpp Platform/Platform.h FileHandling/FileRead.cpp FileHandling/FileRead.h
        FileHandling/FileWrite.cpp FileHandling/FileWrite.h ThreadData/ThreadData.h Game/Game.cpp Game/Game.h)

set(CMAKE_EXE_LINKER_FLAGS "-static")

set(SFML_STATIC_LIBRARIES TRUE)
set(SFML_DIR ${PROJECT_SOURCE_DIR}/SFML/lib/cmake/SFML)
find_package(SFML COMPONENTS system window graphics audio network REQUIRED)

include_directories(${PROJECT_SOURCE_DIR}/SFML/include)

target_link_libraries(POS2022_pong sfml-system sfml-window sfml-graphics sfml-audio sfml-network)