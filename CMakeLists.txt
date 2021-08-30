cmake_minimum_required(VERSION 3.5.1)

project(ScillaRTL)

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
find_package(OpenSSL REQUIRED)
message(STATUS "Found jsoncpp ${jsoncpp_VERSION} at ${jsoncpp_INCLUDE_DIRS}")

# Boost stuff
if (APPLE)
    find_package(Boost REQUIRED unit_test_framework filesystem program_options container)
else()
    find_package(Boost REQUIRED unit_test_framework filesystem program_options)
endif()

# compiler and linker options
add_compile_options(-Wall)
add_compile_options(-Werror)
add_compile_options(-pedantic)
add_compile_options(-Wextra)
add_compile_options(-Wno-unknown-pragmas)
if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    # This seems to be a useless warning throw by clang.
    # Fixing it requires adding a whole lot of unnecessary
    # explicit instantiation declarations. Others are disabling it too.
    # https://github.com/dealii/dealii/issues/3705
    # https://github.com/UCL/STIR/issues/126
    add_compile_options(-Wno-undefined-var-template)
endif()

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
set(CMAKE_CXX_STANDARD 17)

add_subdirectory(libScillaRTL)
add_subdirectory(runners)
add_subdirectory(testsuite)
add_subdirectory(deps/cryptoutils EXCLUDE_FROM_ALL)
add_subdirectory(deps/schnorr EXCLUDE_FROM_ALL)

# installation
set_target_properties(scilla-runner
    PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set_target_properties(expr-runner
    PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set_target_properties(ScillaRTL
    PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
install(
    TARGETS scilla-runner expr-runner
    DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
)
install(
    TARGETS ScillaRTL CryptoUtils Schnorr ff
    DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)
install(
    DIRECTORY include/
    DESTINATION ${CMAKE_INSTALL_PREFIX}/include
    USE_SOURCE_PERMISSIONS
)

include(clang-dev-tools.cmake)
