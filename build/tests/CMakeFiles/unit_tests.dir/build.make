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
CMAKE_SOURCE_DIR = /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/unit_tests.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/unit_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/unit_tests.dir/flags.make

tests/CMakeFiles/unit_tests.dir/main.cpp.o: tests/CMakeFiles/unit_tests.dir/flags.make
tests/CMakeFiles/unit_tests.dir/main.cpp.o: ../tests/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/unit_tests.dir/main.cpp.o"
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unit_tests.dir/main.cpp.o -c /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/tests/main.cpp

tests/CMakeFiles/unit_tests.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unit_tests.dir/main.cpp.i"
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/tests/main.cpp > CMakeFiles/unit_tests.dir/main.cpp.i

tests/CMakeFiles/unit_tests.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unit_tests.dir/main.cpp.s"
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/tests/main.cpp -o CMakeFiles/unit_tests.dir/main.cpp.s

# Object files for target unit_tests
unit_tests_OBJECTS = \
"CMakeFiles/unit_tests.dir/main.cpp.o"

# External object files for target unit_tests
unit_tests_EXTERNAL_OBJECTS = \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/example.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/cuboid.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/drone.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/matrix3D.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/solid.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/scene.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/hexagonal_prism.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/scene_object.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/plateau.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/slope.cpp.o" \
"/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles/program.dir/src/mount.cpp.o"

unit_tests: tests/CMakeFiles/unit_tests.dir/main.cpp.o
unit_tests: CMakeFiles/program.dir/src/example.cpp.o
unit_tests: CMakeFiles/program.dir/src/lacze_do_gnuplota.cpp.o
unit_tests: CMakeFiles/program.dir/src/cuboid.cpp.o
unit_tests: CMakeFiles/program.dir/src/drone.cpp.o
unit_tests: CMakeFiles/program.dir/src/matrix3D.cpp.o
unit_tests: CMakeFiles/program.dir/src/solid.cpp.o
unit_tests: CMakeFiles/program.dir/src/scene.cpp.o
unit_tests: CMakeFiles/program.dir/src/hexagonal_prism.cpp.o
unit_tests: CMakeFiles/program.dir/src/scene_object.cpp.o
unit_tests: CMakeFiles/program.dir/src/plateau.cpp.o
unit_tests: CMakeFiles/program.dir/src/slope.cpp.o
unit_tests: CMakeFiles/program.dir/src/mount.cpp.o
unit_tests: tests/CMakeFiles/unit_tests.dir/build.make
unit_tests: tests/CMakeFiles/unit_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../unit_tests"
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unit_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/unit_tests.dir/build: unit_tests

.PHONY : tests/CMakeFiles/unit_tests.dir/build

tests/CMakeFiles/unit_tests.dir/clean:
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/unit_tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/unit_tests.dir/clean

tests/CMakeFiles/unit_tests.dir/depend:
	cd /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/tests /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests /home/antek/Documents/PO/zad5/zad5_2-AntoniJeziorski/build/tests/CMakeFiles/unit_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/unit_tests.dir/depend

