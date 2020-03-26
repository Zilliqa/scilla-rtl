set(TARGET ScillaRTL)
add_library(${TARGET} SHARED
  SRTL.cpp
  ScillaBuiltins.cpp
  ScillaTypes.cpp
  ScillaValue.cpp
  SafeInt.cpp
  Utils.cpp
)

target_compile_definitions(${TARGET} PUBLIC ${LLVM_DEFINITIONS})
# We include LLVM includes as system includes to avoid warnings from there.
target_include_directories(${TARGET} SYSTEM PUBLIC ${LLVM_INCLUDE_DIRS})
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET} PUBLIC ${json_INCLUDE_DIRS})
target_include_directories(${TARGET} PUBLIC ${Boost_INCLUDE_DIRS})
# The bignum / wideint library git submodule. It needs no linking.
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/deps/bignum/src)

target_link_libraries (${TARGET} PUBLIC jsoncpp ${Boost_LIBRARIES})
