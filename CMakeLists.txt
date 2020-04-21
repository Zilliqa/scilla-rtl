cmake_minimum_required(VERSION 3.5.1)

project(ScillaVM)

# detect operating system
message(STATUS "We are on a ${CMAKE_SYSTEM_NAME} system")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# Print build type: Debug/Release etc.
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
#
# check dependencies
#
find_package(PkgConfig REQUIRED)
pkg_check_modules(jsoncpp REQUIRED jsoncpp)
message(STATUS "Found jsoncpp ${jsoncpp_VERSION} at ${jsoncpp_INCLUDE_DIRS}")
# LLVM stuff
find_package(LLVM 10 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
# Find the libraries that correspond to the LLVM components we use
llvm_map_components_to_libnames(llvm_libs support core orcjit nativecodegen)
# Boost stuff
find_package(Boost REQUIRED unit_test_framework filesystem program_options)

# compiler and linker options
add_compile_options(-Wall)
add_compile_options(-Werror)
add_compile_options(-pedantic)
add_compile_options(-Wextra)
add_compile_options(-Wno-unknown-pragmas)

if (THREAD_SANITIZER AND ADDRESS_SANITIZER)
    message(FATAL_ERROR "Cannot use ThreadSanitizer (THREAD_SANITIZER=ON) and AddressSanitizer (ADDRESS_SANITIZER=ON) at the same time")
endif()

if (THREAD_SANITIZER)
    add_compile_options(-fsanitize=thread)
    link_libraries(-fsanitize=thread)
    message(STATUS "THREAD SANITIZER enabled")
endif()

if (ADDRESS_SANITIZER)
    add_compile_options(-fsanitize=address)
    add_compile_options(-fno-omit-frame-pointer)
    link_libraries(-fsanitize=address)
    message(STATUS "ADDRESS SANITIZER enabled")
endif()

# export compile commands
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# C++ standard
set(CMAKE_CXX_STANDARD 14)

add_subdirectory(libjitd)
add_subdirectory(libsrtl)
add_subdirectory(runners)
add_subdirectory(testsuite)

# installation
set_target_properties(scilla-runner
    PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set_target_properties(expr-runner
    PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set_target_properties(ScillaRTL
    PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set_target_properties(ScillaJITD
    PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
install(
    DIRECTORY ${CMAKE_BINARY_DIR}/bin ${CMAKE_BINARY_DIR}/lib ${CMAKE_SOURCE_DIR}/include
    DESTINATION ${CMAKE_INSTALL_PREFIX}
    USE_SOURCE_PERMISSIONS
)

include(clang-dev-tools.cmake)
