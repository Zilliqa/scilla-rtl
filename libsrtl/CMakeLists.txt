set(TARGET ScillaRTL)
add_library(${TARGET} SHARED
  srtl.cpp
  scilla_functions.cpp
)

target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include ${JSONCPP_INCLUDE_DIR})
target_link_libraries (${TARGET} PUBLIC ${JSONCPP_LINK_TARGETS})
