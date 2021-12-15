# Additional target to perform clang-format/clang-tidy run
# Requires clang-format and clang-tidy

find_program(CLANG_FORMAT NAMES clang-format clang-format-13)
find_program(CLANG_TIDY NAMES clang-tidy clang-tidy-13)

if (CLANG_FORMAT OR CLANG_TIDY)
  # Get all project files
  file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.hpp *.h)
  # Exclude files in git submodules
  list(FILTER ALL_SOURCE_FILES EXCLUDE REGEX "/deps/|/build/")

  if (CLANG_FORMAT)
    message(STATUS "found ${CLANG_FORMAT}")
    add_custom_target(
      clang-format
      COMMAND ${CLANG_FORMAT}
      -style=LLVM
      -i
      ${ALL_SOURCE_FILES}
      )
  endif()

  if (CLANG_TIDY)
    message(STATUS "found ${CLANG_TIDY}")
    add_custom_target(
      clang-tidy
      COMMAND ${CLANG_TIDY}
      -config=''
      -p ${CMAKE_BINARY_DIR}
      ${ALL_SOURCE_FILES}
      )
  endif()

endif()
