# Need LLVM so we can link against it. Either we automatically find this in the "default" place or
# it's found because we set up $LLVM_DIR. There should be no additions necessary here.
find_package(LLVM REQUIRED CONFIG)

# Status messages about LLVM found.
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Ensure we found our own specified version at 7.0.1. 
if(NOT ("${LLVM_VERSION_MAJOR}" EQUAL 7 AND
        "${LLVM_VERSION_MINOR}" EQUAL 0 AND
        "${LLVM_VERSION_PATCH}" EQUAL 1))
  message(FATAL_ERROR "LLVM version incompatible.")
endif()

# Add llvm specific pieces to our build.
include_directories("${LLVM_INCLUDE_DIRS}")
add_definitions("${LLVM_DEFINITIONS}")
