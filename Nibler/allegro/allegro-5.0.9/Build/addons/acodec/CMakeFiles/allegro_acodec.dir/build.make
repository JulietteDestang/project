# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build

# Include any dependencies generated for this target.
include addons/acodec/CMakeFiles/allegro_acodec.dir/depend.make

# Include the progress variables for this target.
include addons/acodec/CMakeFiles/allegro_acodec.dir/progress.make

# Include the compile flags for this target's objects.
include addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make

lib/Headers/allegro5/allegro_acodec.h: ../addons/acodec/allegro5/allegro_acodec.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content lib/Headers/allegro5/allegro_acodec.h"
	$(CMAKE_COMMAND) -E copy /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/allegro5/allegro_acodec.h lib/Headers/allegro5/allegro_acodec.h

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o: ../addons/acodec/acodec.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/acodec.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/acodec.c

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/acodec.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/acodec.c > CMakeFiles/allegro_acodec.dir/acodec.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/acodec.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/acodec.c -o CMakeFiles/allegro_acodec.dir/acodec.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o: ../addons/acodec/wav.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/wav.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/wav.c

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/wav.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/wav.c > CMakeFiles/allegro_acodec.dir/wav.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/wav.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/wav.c -o CMakeFiles/allegro_acodec.dir/wav.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o: ../addons/acodec/helper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/helper.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/helper.c

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/helper.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/helper.c > CMakeFiles/allegro_acodec.dir/helper.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/helper.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/helper.c -o CMakeFiles/allegro_acodec.dir/helper.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o: ../addons/acodec/flac.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/flac.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/flac.c

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/flac.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/flac.c > CMakeFiles/allegro_acodec.dir/flac.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/flac.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/flac.c -o CMakeFiles/allegro_acodec.dir/flac.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o: ../addons/acodec/modaudio.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/modaudio.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/modaudio.c

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/modaudio.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/modaudio.c > CMakeFiles/allegro_acodec.dir/modaudio.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/modaudio.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/modaudio.c -o CMakeFiles/allegro_acodec.dir/modaudio.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o: addons/acodec/CMakeFiles/allegro_acodec.dir/flags.make
addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o: ../addons/acodec/ogg.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_acodec.dir/ogg.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/ogg.c

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_acodec.dir/ogg.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/ogg.c > CMakeFiles/allegro_acodec.dir/ogg.c.i

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_acodec.dir/ogg.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_ACODEC_SRC   -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec/ogg.c -o CMakeFiles/allegro_acodec.dir/ogg.c.s

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.requires:
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.requires

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.provides: addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.requires
	$(MAKE) -f addons/acodec/CMakeFiles/allegro_acodec.dir/build.make addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.provides.build
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.provides

addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.provides.build: addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o

# Object files for target allegro_acodec
allegro_acodec_OBJECTS = \
"CMakeFiles/allegro_acodec.dir/acodec.c.o" \
"CMakeFiles/allegro_acodec.dir/wav.c.o" \
"CMakeFiles/allegro_acodec.dir/helper.c.o" \
"CMakeFiles/allegro_acodec.dir/flac.c.o" \
"CMakeFiles/allegro_acodec.dir/modaudio.c.o" \
"CMakeFiles/allegro_acodec.dir/ogg.c.o"

# External object files for target allegro_acodec
allegro_acodec_EXTERNAL_OBJECTS =

lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/build.make
lib/liballegro_acodec.so.5.0.9: lib/liballegro_audio.so.5.0.9
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libFLAC.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libogg.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libdumb.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libvorbisfile.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libvorbis.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libogg.so
lib/liballegro_acodec.so.5.0.9: lib/liballegro.so.5.0.9
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libSM.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libICE.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libX11.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libXext.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libGL.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libGLU.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libopenal.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libdumb.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libvorbisfile.so
lib/liballegro_acodec.so.5.0.9: /usr/lib64/libvorbis.so
lib/liballegro_acodec.so.5.0.9: addons/acodec/CMakeFiles/allegro_acodec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../lib/liballegro_acodec.so"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allegro_acodec.dir/link.txt --verbose=$(VERBOSE)
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/liballegro_acodec.so.5.0.9 ../../lib/liballegro_acodec.so.5.0 ../../lib/liballegro_acodec.so

lib/liballegro_acodec.so.5.0: lib/liballegro_acodec.so.5.0.9

lib/liballegro_acodec.so: lib/liballegro_acodec.so.5.0.9

# Rule to build all files generated by this target.
addons/acodec/CMakeFiles/allegro_acodec.dir/build: lib/liballegro_acodec.so
addons/acodec/CMakeFiles/allegro_acodec.dir/build: lib/Headers/allegro5/allegro_acodec.h
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/build

addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/acodec.c.o.requires
addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/wav.c.o.requires
addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/helper.c.o.requires
addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/flac.c.o.requires
addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/modaudio.c.o.requires
addons/acodec/CMakeFiles/allegro_acodec.dir/requires: addons/acodec/CMakeFiles/allegro_acodec.dir/ogg.c.o.requires
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/requires

addons/acodec/CMakeFiles/allegro_acodec.dir/clean:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec && $(CMAKE_COMMAND) -P CMakeFiles/allegro_acodec.dir/cmake_clean.cmake
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/clean

addons/acodec/CMakeFiles/allegro_acodec.dir/depend:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9 /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/acodec /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/acodec/CMakeFiles/allegro_acodec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/acodec/CMakeFiles/allegro_acodec.dir/depend
