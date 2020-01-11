# Additional target to perform clang-format/clang-tidy run
# Requires clang-format and clang-tidy

find_program(CLANG_FORMAT NAMES clang-format clang-format-9)
find_program(CLANG_TIDY NAMES clang-tidy clang-tidy-9)

if (CLANG_FORMAT OR CLANG_TIDY)
  # Get all project files
  file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.hpp)

  if (CLANG_FORMAT)
    message(STATUS "found ${CLANG_FORMAT}")
    add_custom_target(
      clang-format
      COMMAND clang-format-9
      -style=LLVM
      -i
      ${ALL_SOURCE_FILES}
      )
  endif()

  if (CLANG_TIDY)
    message(STATUS "found ${CLANG_TIDY}")
    add_custom_target(
      clang-tidy
      COMMAND /usr/bin/clang-tidy-9
      -config=''
      -p ${CMAKE_BINARY_DIR}
      ${ALL_SOURCE_FILES}
      )
  endif()
endif()
