# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vipul/ossim-svn/src/ossim_package_support/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vipul/ossim-svn/src/ossim_package_support/cmake/build

# Include any dependencies generated for this target.
include oms/coms/CMakeFiles/oms-video-test.dir/depend.make

# Include the progress variables for this target.
include oms/coms/CMakeFiles/oms-video-test.dir/progress.make

# Include the compile flags for this target's objects.
include oms/coms/CMakeFiles/oms-video-test.dir/flags.make

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o: oms/coms/CMakeFiles/oms-video-test.dir/flags.make
oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o: /home/vipul/ossim-svn/src/oms/coms/test/oms-video-test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o -c /home/vipul/ossim-svn/src/oms/coms/test/oms-video-test.cpp

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.i"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vipul/ossim-svn/src/oms/coms/test/oms-video-test.cpp > CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.i

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.s"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vipul/ossim-svn/src/oms/coms/test/oms-video-test.cpp -o CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.s

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.requires:
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.requires

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.provides: oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.requires
	$(MAKE) -f oms/coms/CMakeFiles/oms-video-test.dir/build.make oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.provides.build
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.provides

oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.provides.build: oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o

# Object files for target oms-video-test
oms__video__test_OBJECTS = \
"CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o"

# External object files for target oms-video-test
oms__video__test_EXTERNAL_OBJECTS =

bin/oms-video-test: oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o
bin/oms-video-test: lib/libossim.so.1.8.12
bin/oms-video-test: lib/liboms.so.1.8.12
bin/oms-video-test: lib/libossimPredator.so.1.8.12
bin/oms-video-test: lib/libossim.so.1.8.12
bin/oms-video-test: /usr/lib/libjpeg.so
bin/oms-video-test: /usr/lib/libtiff.so
bin/oms-video-test: /usr/lib/libgeotiff.so
bin/oms-video-test: /usr/lib/libfreetype.so
bin/oms-video-test: /usr/lib64/openmpi/lib/libmpi.so
bin/oms-video-test: /usr/lib/libdl.so
bin/oms-video-test: /usr/lib/libavformat.so
bin/oms-video-test: /usr/lib/libavdevice.so
bin/oms-video-test: /usr/lib/libavcodec.so
bin/oms-video-test: /usr/lib/libavutil.so
bin/oms-video-test: /usr/lib/libswscale.so
bin/oms-video-test: /usr/lib/libOpenThreads.so
bin/oms-video-test: /usr/lib/libz.so
bin/oms-video-test: oms/coms/CMakeFiles/oms-video-test.dir/build.make
bin/oms-video-test: oms/coms/CMakeFiles/oms-video-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/oms-video-test"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oms-video-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
oms/coms/CMakeFiles/oms-video-test.dir/build: bin/oms-video-test
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/build

oms/coms/CMakeFiles/oms-video-test.dir/requires: oms/coms/CMakeFiles/oms-video-test.dir/test/oms-video-test.cpp.o.requires
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/requires

oms/coms/CMakeFiles/oms-video-test.dir/clean:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms && $(CMAKE_COMMAND) -P CMakeFiles/oms-video-test.dir/cmake_clean.cmake
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/clean

oms/coms/CMakeFiles/oms-video-test.dir/depend:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vipul/ossim-svn/src/ossim_package_support/cmake /home/vipul/ossim-svn/src/oms/coms /home/vipul/ossim-svn/src/ossim_package_support/cmake/build /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/oms/coms/CMakeFiles/oms-video-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : oms/coms/CMakeFiles/oms-video-test.dir/depend
