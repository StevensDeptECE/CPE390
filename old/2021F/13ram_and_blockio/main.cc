#include <iostream>
#include <time.h>
using namespace std;

extern uint64_t readFromRAM(uint64_t x[], uint32_t size);
extern uint64_t readFromRAMMultipleTimes(uint64_t x[], uint32_t size, uint32_t trials);
extern uint64_t readFromRAMOutOfOrder(uint64_t x[], uint32_t size, uint32_t trials, uint32_t skip);
int main() {
	constexpr uint32_t n = 1024*1024*1024;//*4;
  uint64_t * p = new uint64_t[n];
	// make one call to warm up the cache
	
	uint64_t result = readFromRAMOutOfOrder(p, n, 1, 32);
	for (uint32_t skip = 32; skip <= 4096; skip *= 2)  {
		clock_t t0 = clock();
		//	uint64_t result = readFromRAM(p, n);
		//	uint64_t result = readFromRAMMultipleTimes(p, n, 1);
		
		uint64_t result = readFromRAMOutOfOrder(p, n, 1, skip);
		clock_t t1 = clock();
		cout << "skip=" << skip << " elapsed: " << (t1-t0) << '\n';
	}

	delete [] p;
}
