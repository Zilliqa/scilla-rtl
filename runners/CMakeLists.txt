set(TARGET scilla-runner)
add_executable(${TARGET} scilla-runner.cpp)

target_include_directories(${TARGET} PUBLIC ${JSONCPP_INCLUDE_TARGETS})
target_link_libraries (${TARGET} PUBLIC ${JSONCPP_LINK_TARGETS} ScillaRTL)
