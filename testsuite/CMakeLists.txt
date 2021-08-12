set(TARGET_SCILLA_TESTS scilla-testsuite)

add_executable(${TARGET_SCILLA_TESTS} 
  Testsuite.cpp
  ContrTests.cpp
  ExprExecTests.cpp
  TypeTests.cpp
  TypeDescrs.cpp
  StateJsonTests.cpp
  StateJsonUtils.cpp
  SafeIntTests.cpp
)

target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${BOOST_INCLUDE_TARGETS})
target_link_libraries (${TARGET_SCILLA_TESTS} PUBLIC ScillaRTL)

# Add a custom target to run the testsuite as `make runtests`
# Note: We don't use `make test` becaus `test` is a reserved target.
#       We aren't using CMake's test infrastructure.
add_custom_target(runtests
    ${CMAKE_BINARY_DIR}/testsuite/scilla-testsuite --show_progress -- ${CMAKE_SOURCE_DIR}/testsuite
    COMMENT "Executing testsuite as: ${CMAKE_BINARY_DIR}/testsuite/scilla-testsuite --show_progress -- ${CMAKE_SOURCE_DIR}/testsuite"
)
add_dependencies(runtests ${TARGET_SCILLA_TESTS})
