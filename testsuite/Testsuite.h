#include <boost/test/unit_test.hpp>
#include <chrono>
#include <string>

namespace ScillaTestsuite {

namespace Config {
// Overwrites the expected result instead of comparing with it.
extern bool UpdateResults;
extern std::string TestsuiteSrc;
extern uint64_t GasLimit;
} // namespace Config

// A class that calls BOOST_TEST_MESSAGE with the duration of its existance.
class ScopeTimer {
public:
  ScopeTimer(const std::string &EventName)
      : EventName(EventName),
        ConstructedTime(std::chrono::high_resolution_clock::now()) {}
  ~ScopeTimer() {
    auto DestructedTime = std::chrono::high_resolution_clock::now();
    auto TimerDuration = std::chrono::duration_cast<std::chrono::microseconds>(
                             DestructedTime - ConstructedTime)
                             .count();

    BOOST_TEST_MESSAGE(EventName << ": " << TimerDuration << "us");
  }

private:
  std::string EventName;
  std::chrono::system_clock::time_point ConstructedTime;
};

} // namespace ScillaTestsuite
