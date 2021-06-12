set(TARGET_SCILLA_RUNNER scilla-runner)
add_executable(${TARGET_SCILLA_RUNNER} scilla-runner.cpp)
target_compile_definitions(${TARGET_SCILLA_RUNNER} PUBLIC ${LLVM_DEFINITIONS})
target_include_directories(${TARGET_SCILLA_RUNNER} PUBLIC ${PROJECT_SOURCE_DIR}/include)
# We include LLVM includes as system includes to avoid warnings from there.
target_include_directories(${TARGET_SCILLA_RUNNER} SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_link_libraries (${TARGET_SCILLA_RUNNER} PUBLIC ScillaRTL pthread  ${llvm_libs} ${Boost_LIBRARIES})

set(TARGET_EXPR_RUNNER expr-runner)
add_executable(${TARGET_EXPR_RUNNER} expr-runner.cpp)
target_compile_definitions(${TARGET_EXPR_RUNNER} PUBLIC ${LLVM_DEFINITIONS})
target_include_directories(${TARGET_EXPR_RUNNER} PUBLIC ${PROJECT_SOURCE_DIR}/include)
# We include LLVM includes as system includes to avoid warnings from there.
target_include_directories(${TARGET_EXPR_RUNNER} SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_link_libraries (${TARGET_EXPR_RUNNER} PUBLIC ScillaRTL pthread ${llvm_libs} ${Boost_LIBRARIES})