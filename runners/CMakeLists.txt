set(TARGET_SCILLA_RUNNER scilla-runner)
add_executable(${TARGET_SCILLA_RUNNER} scilla-runner.cpp)
target_include_directories(${TARGET_SCILLA_RUNNER} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_link_libraries (${TARGET_SCILLA_RUNNER} PUBLIC ScillaRTL)

set(TARGET_EXPR_RUNNER expr-runner)
add_executable(${TARGET_EXPR_RUNNER} expr-runner.cpp)
target_include_directories(${TARGET_EXPR_RUNNER} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_link_libraries (${TARGET_EXPR_RUNNER} PUBLIC ScillaRTL)