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
include ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/depend.make

# Include the progress variables for this target.
include ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/progress.make

# Include the compile flags for this target's objects.
include ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/flags.make

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/flags.make
ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o: /home/vipul/ossim-svn/src/ossim/src/apps/ossim-cmm/ossim-cmm.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o -c /home/vipul/ossim-svn/src/ossim/src/apps/ossim-cmm/ossim-cmm.cpp

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.i"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vipul/ossim-svn/src/ossim/src/apps/ossim-cmm/ossim-cmm.cpp > CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.i

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.s"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vipul/ossim-svn/src/ossim/src/apps/ossim-cmm/ossim-cmm.cpp -o CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.s

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.requires:
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.requires

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.provides: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.requires
	$(MAKE) -f ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/build.make ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.provides.build
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.provides

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.provides.build: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o

# Object files for target ossim-cmm
ossim__cmm_OBJECTS = \
"CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o"

# External object files for target ossim-cmm
ossim__cmm_EXTERNAL_OBJECTS =

ossim-cmm: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o
ossim-cmm: libossim.so.1.8.12
ossim-cmm: /usr/lib/libOpenThreads.so
ossim-cmm: /usr/lib/libjpeg.so
ossim-cmm: /usr/lib/libtiff.so
ossim-cmm: /usr/lib/libgeotiff.so
ossim-cmm: /usr/lib/libOpenThreads.so
ossim-cmm: /usr/lib/libfreetype.so
ossim-cmm: /usr/lib/openmpi/lib/libmpi_cxx.so
ossim-cmm: /usr/lib/openmpi/lib/libmpi.so
ossim-cmm: /usr/lib/openmpi/lib/libopen-rte.so
ossim-cmm: /usr/lib/openmpi/lib/libopen-pal.so
ossim-cmm: /usr/lib/libdl.so
ossim-cmm: /usr/lib/libnsl.so
ossim-cmm: /usr/lib/libutil.so
ossim-cmm: /usr/lib/libm.so
ossim-cmm: /usr/lib/libz.so
ossim-cmm: /usr/lib/libdl.so
ossim-cmm: /usr/lib/libnsl.so
ossim-cmm: /usr/lib/libutil.so
ossim-cmm: /usr/lib/libm.so
ossim-cmm: /usr/lib/libz.so
ossim-cmm: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/build.make
ossim-cmm: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../../ossim-cmm"
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ossim-cmm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/build: ossim-cmm
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/build

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/requires: ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/ossim-cmm.cpp.o.requires
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/requires

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/clean:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm && $(CMAKE_COMMAND) -P CMakeFiles/ossim-cmm.dir/cmake_clean.cmake
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/clean

ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/depend:
	cd /home/vipul/ossim-svn/src/ossim_package_support/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vipul/ossim-svn/src/ossim_package_support/cmake /home/vipul/ossim-svn/src/ossim/src/apps/ossim-cmm /home/vipul/ossim-svn/src/ossim_package_support/cmake/build /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm /home/vipul/ossim-svn/src/ossim_package_support/cmake/build/ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ossim/src/apps/ossim-cmm/CMakeFiles/ossim-cmm.dir/depend

