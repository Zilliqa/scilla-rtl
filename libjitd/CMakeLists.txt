set(TARGET ScillaJITD)
add_library(${TARGET} SHARED JITD.cpp Debug.cpp)

target_compile_definitions(${TARGET} PUBLIC ${LLVM_DEFINITIONS})
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET} PUBLIC ${json_INCLUDE_DIRS})
# We include LLVM includes as system includes to avoid warnings from there.
target_include_directories(${TARGET} SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_link_libraries (${TARGET} PUBLIC ${llvm_libs} ScillaRTL jsoncpp)
