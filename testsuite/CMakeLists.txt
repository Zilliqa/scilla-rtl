set(TARGET_SCILLA_TESTS scilla-testsuite)

add_executable(${TARGET_SCILLA_TESTS} Testsuite.cpp)
# Specify path to the test files, so that the testsuite knows where to fine them.
target_compile_definitions(${TARGET_SCILLA_TESTS} PUBLIC TESTSUITE_DIR="${PROJECT_SOURCE_DIR}/testsuite")
target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET_SCILLA_TESTS} PUBLIC ${BOOST_INCLUDE_TARGETS})
target_link_libraries (${TARGET_SCILLA_TESTS} PUBLIC ScillaRTL ScillaJITD ${Boost_LIBRARIES})
