# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\cerve\CLionProjects\POS2022-pong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/POS2022_pong.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/POS2022_pong.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/POS2022_pong.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/POS2022_pong.dir/flags.make

CMakeFiles/POS2022_pong.dir/main.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/main.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/main.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/main.cpp
CMakeFiles/POS2022_pong.dir/main.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/POS2022_pong.dir/main.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/main.cpp.obj -MF CMakeFiles\POS2022_pong.dir\main.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\main.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\main.cpp

CMakeFiles/POS2022_pong.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/main.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\main.cpp > CMakeFiles\POS2022_pong.dir\main.cpp.i

CMakeFiles/POS2022_pong.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/main.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\main.cpp -o CMakeFiles\POS2022_pong.dir\main.cpp.s

CMakeFiles/POS2022_pong.dir/server/server.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/server/server.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/server/server.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/server/server.cpp
CMakeFiles/POS2022_pong.dir/server/server.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/POS2022_pong.dir/server/server.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/server/server.cpp.obj -MF CMakeFiles\POS2022_pong.dir\server\server.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\server\server.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\server\server.cpp

CMakeFiles/POS2022_pong.dir/server/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/server/server.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\server\server.cpp > CMakeFiles\POS2022_pong.dir\server\server.cpp.i

CMakeFiles/POS2022_pong.dir/server/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/server/server.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\server\server.cpp -o CMakeFiles\POS2022_pong.dir\server\server.cpp.s

CMakeFiles/POS2022_pong.dir/client/client.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/client/client.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/client/client.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/client/client.cpp
CMakeFiles/POS2022_pong.dir/client/client.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/POS2022_pong.dir/client/client.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/client/client.cpp.obj -MF CMakeFiles\POS2022_pong.dir\client\client.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\client\client.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\client\client.cpp

CMakeFiles/POS2022_pong.dir/client/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/client/client.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\client\client.cpp > CMakeFiles\POS2022_pong.dir\client\client.cpp.i

CMakeFiles/POS2022_pong.dir/client/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/client/client.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\client\client.cpp -o CMakeFiles\POS2022_pong.dir\client\client.cpp.s

CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/Ball/Ball.cpp
CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj -MF CMakeFiles\POS2022_pong.dir\Ball\Ball.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\Ball\Ball.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\Ball\Ball.cpp

CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\Ball\Ball.cpp > CMakeFiles\POS2022_pong.dir\Ball\Ball.cpp.i

CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\Ball\Ball.cpp -o CMakeFiles\POS2022_pong.dir\Ball\Ball.cpp.s

CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/Platform/Platform.cpp
CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj -MF CMakeFiles\POS2022_pong.dir\Platform\Platform.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\Platform\Platform.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\Platform\Platform.cpp

CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\Platform\Platform.cpp > CMakeFiles\POS2022_pong.dir\Platform\Platform.cpp.i

CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\Platform\Platform.cpp -o CMakeFiles\POS2022_pong.dir\Platform\Platform.cpp.s

CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/FileHandling/FileRead.cpp
CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj -MF CMakeFiles\POS2022_pong.dir\FileHandling\FileRead.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\FileHandling\FileRead.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileRead.cpp

CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileRead.cpp > CMakeFiles\POS2022_pong.dir\FileHandling\FileRead.cpp.i

CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileRead.cpp -o CMakeFiles\POS2022_pong.dir\FileHandling\FileRead.cpp.s

CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/FileHandling/FileWrite.cpp
CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj -MF CMakeFiles\POS2022_pong.dir\FileHandling\FileWrite.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\FileHandling\FileWrite.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileWrite.cpp

CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileWrite.cpp > CMakeFiles\POS2022_pong.dir\FileHandling\FileWrite.cpp.i

CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\FileHandling\FileWrite.cpp -o CMakeFiles\POS2022_pong.dir\FileHandling\FileWrite.cpp.s

CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj: CMakeFiles/POS2022_pong.dir/flags.make
CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj: CMakeFiles/POS2022_pong.dir/includes_CXX.rsp
CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj: C:/Users/cerve/CLionProjects/POS2022-pong/Game/Game.cpp
CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj: CMakeFiles/POS2022_pong.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj -MF CMakeFiles\POS2022_pong.dir\Game\Game.cpp.obj.d -o CMakeFiles\POS2022_pong.dir\Game\Game.cpp.obj -c C:\Users\cerve\CLionProjects\POS2022-pong\Game\Game.cpp

CMakeFiles/POS2022_pong.dir/Game/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/POS2022_pong.dir/Game/Game.cpp.i"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\cerve\CLionProjects\POS2022-pong\Game\Game.cpp > CMakeFiles\POS2022_pong.dir\Game\Game.cpp.i

CMakeFiles/POS2022_pong.dir/Game/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/POS2022_pong.dir/Game/Game.cpp.s"
	C:\Users\cerve\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\cerve\CLionProjects\POS2022-pong\Game\Game.cpp -o CMakeFiles\POS2022_pong.dir\Game\Game.cpp.s

# Object files for target POS2022_pong
POS2022_pong_OBJECTS = \
"CMakeFiles/POS2022_pong.dir/main.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/server/server.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/client/client.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj" \
"CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj"

# External object files for target POS2022_pong
POS2022_pong_EXTERNAL_OBJECTS =

POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/main.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/server/server.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/client/client.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/Ball/Ball.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/Platform/Platform.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/FileHandling/FileRead.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/FileHandling/FileWrite.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/Game/Game.cpp.obj
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/build.make
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-system-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-window-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-graphics-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-audio-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-network-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-window-s-d.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libfreetype.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libopenal32.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libvorbisfile.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libvorbisenc.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libvorbis.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libogg.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libFLAC.a
POS2022_pong.exe: C:/Users/cerve/CLionProjects/POS2022-pong/SFML/lib/libsfml-system-s-d.a
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/linklibs.rsp
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/objects1.rsp
POS2022_pong.exe: CMakeFiles/POS2022_pong.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable POS2022_pong.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\POS2022_pong.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/POS2022_pong.dir/build: POS2022_pong.exe
.PHONY : CMakeFiles/POS2022_pong.dir/build

CMakeFiles/POS2022_pong.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\POS2022_pong.dir\cmake_clean.cmake
.PHONY : CMakeFiles/POS2022_pong.dir/clean

CMakeFiles/POS2022_pong.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\cerve\CLionProjects\POS2022-pong C:\Users\cerve\CLionProjects\POS2022-pong C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug C:\Users\cerve\CLionProjects\POS2022-pong\cmake-build-debug\CMakeFiles\POS2022_pong.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/POS2022_pong.dir/depend

