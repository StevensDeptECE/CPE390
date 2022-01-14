#include <cstdint>
using namespace std;

uint64_t readFromRAM(uint64_t x[], uint32_t size) {
	uint64_t sum = 0;
  for (int i = 0; i < size; ++i)
	  sum += x[i];
	return sum;
}

uint64_t readFromRAMMultipleTimes(uint64_t x[], uint32_t size, uint32_t trials) {
	uint64_t sum = 0;
	for (uint32_t t = 0; t < trials; t++) {
		for (int i = 0; i < size; ++i)
			sum += x[i];
	}
	return sum;
}

uint64_t readFromRAMOutOfOrder(uint64_t x[], uint32_t size, uint32_t trials, uint32_t skip) {
	uint64_t sum = 0;
	for (uint32_t t = 0; t < trials; t++) {
		for (int j = 0; j < skip; j++)
			for (int i = 0; i < size; i += skip)
				sum += x[j + i];
	}
	return sum;
}

