set(TARGET ScillaRTL)
add_library(${TARGET} SHARED
  ScillaExecImpl.cpp
  SRTL.cpp
  ScillaBuiltins.cpp
  ScillaTypes.cpp
  ScillaValue.cpp
  SafeInt.cpp
  Utils.cpp
  DLog.cpp
)

target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/include)
target_include_directories(${TARGET} PUBLIC ${json_INCLUDE_DIRS})
target_include_directories(${TARGET} PUBLIC ${Boost_INCLUDE_DIRS})
# The bignum / wideint library git submodule. It needs no linking.
target_include_directories(${TARGET} SYSTEM PUBLIC ${PROJECT_SOURCE_DIR}/deps/wide-integer)
target_link_libraries (${TARGET} PUBLIC jsoncpp pthread ${Boost_LIBRARIES} secp256k1)
# Zilliqa's cryptoutils library
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/deps/cryptoutils/include)
target_link_libraries (${TARGET} PUBLIC CryptoUtils)
# Zilliqa's Schnorr library
target_include_directories(${TARGET} PUBLIC ${PROJECT_SOURCE_DIR}/deps/schnorr/src/libSchnorr/include)
target_link_libraries (${TARGET} PUBLIC Schnorr)

target_include_directories(${TARGET} PUBLIC ${OPENSSL_INCLUDE_DIRS})
target_link_libraries(${TARGET} PRIVATE ${OPENSSL_LIBRARIES})
