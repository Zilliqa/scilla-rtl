set(TARGET ScillaJITD)
add_library(${TARGET} SHARED jitd.cpp)

target_compile_definitions(${TARGET} PUBLIC ${LLVM_DEFINITIONS})
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})
target_link_libraries (${TARGET} PUBLIC ${JSONCPP_LINK_TARGETS} ${llvm_libs} ScillaRTL)
