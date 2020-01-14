set(TARGET ScillaRTL)
add_library(${TARGET} SHARED
  SRTL.cpp
  ScillaBuiltins.cpp
  ScillaTypes.cpp
  ScillaValue.cpp
)

target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET} PUBLIC ${JSONCPP_INCLUDE_DIR})
target_include_directories(${TARGET} PUBLIC ${BOOST_INCLUDE_DIR})

target_link_libraries (${TARGET} PUBLIC ${JSONCPP_LINK_TARGETS})
target_link_libraries (${TARGET} PUBLIC ${BOOST_LINK_TARGETS})
