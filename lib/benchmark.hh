#pragma once

#include <chrono>
#include <cstdint>
#include <functional>
#include <iostream>
#include <iomanip>
#include <string>

template <typename Ratio = std::milli>
class benchmark {
 private:
  std::chrono::time_point<std::chrono::steady_clock, std::chrono::nanoseconds>
      t0;
  std::chrono::duration<double, Ratio> elapsedTime;
  const std::string_view msg;

#if 0
	std::ostream&
	display(std::ostream& os, std::chrono::duration<std::ratio>& d) {
    using namespace std;
    using namespace std::chrono;
    typedef duration<int, ratio<86400>> days;
    char fill = os.fill();
    os.fill('0');
    auto s = duration_cast<seconds>(d);
    os << std::setw(2) << s.count() << 's';
    os.fill(fill);
    return os;
	}
#endif

	
 public:
  benchmark(const std::string_view msg) : msg(msg), elapsedTime(0) {}

  constexpr void reset() { elapsedTime.zero(); }

  void start() { t0 = std::chrono::steady_clock::now(); }

  void end() {
    auto t1 = std::chrono::steady_clock::now();
    elapsedTime += (t1 - t0);
  }

  auto elapsed() const { return elapsedTime; }

  auto endAndDisplay(auto shouldPrint) {end(); if(shouldPrint){display();}}
	
	
  void display() const {
		std::cerr << std::setw(40) << msg << " elapsed time: " << elapsedTime << "\n";
  }
  void displayavg(uint64_t iterations) const {
    std::cerr << msg << " elapsed time: " <<
			std::setw(14) << (elapsedTime/iterations).count() << "ns\n";
  }
  template <typename Func>
  static void benchOnce(const std::string_view msg, bool doesPrint,  Func func) {
    benchmark<Ratio> b(msg);
    b.start();
    func();
    b.end();
    if(doesPrint)
      b.display();
  }

  template <typename Func>
  static void bench(const std::string_view msg, uint64_t numIterations,
										Func func) {
    uint64_t iter = numIterations;
    benchmark<Ratio> b(msg);
    b.start();
    for (; numIterations > 0; numIterations--) func();
    b.end();
    b.displayavg(iter);
  }

};
