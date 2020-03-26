set(TARGET_SCILLA_TESTS scilla-testsuite)

add_executable(${TARGET_SCILLA_TESTS} 
  Testsuite.cpp
  ExprExecTests.cpp
  TypeParserTests.cpp
  TypeDescrs.cpp
  StateJsonTests.cpp
)

target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${BOOST_INCLUDE_TARGETS})
target_link_libraries (${TARGET_SCILLA_TESTS} PUBLIC ScillaRTL ScillaJITD ${Boost_LIBRARIES})

# Add a custom target to run the testsuite as `make test`
add_custom_target(runtests
    ${CMAKE_BINARY_DIR}/testsuite/scilla-testsuite -- --testsuite_src ${CMAKE_SOURCE_DIR}/testsuite
)
add_dependencies(runtests ${TARGET_SCILLA_TESTS})
