cmake_minimum_required(VERSION 3.0)
project(ptxsopt)

# Ensure we have LLVM.
include("${CMAKE_SOURCE_DIR}/cmake/get_llvm.cmake")

# Set C++ standards.
set(CMAKE_CXX_STANDARD 14)

# Add CXX flags.
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# Include cmake utilities.
include("${CMAKE_SOURCE_DIR}/cmake/symlink_to_bin.cmake")

# Include project headers.
include_directories("${CMAKE_SOURCE_DIR}/include")

# Build the source directory.
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src")
