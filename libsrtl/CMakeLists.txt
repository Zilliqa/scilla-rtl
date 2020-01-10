set(TARGET ScillaRTL)
add_library(${TARGET} SHARED
  SRTL.cpp
  ScillaBuiltins.cpp
)

target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include ${JSONCPP_INCLUDE_DIR})
target_link_libraries (${TARGET} PUBLIC ${JSONCPP_LINK_TARGETS})
