#include <cstdint>
using namespace std;

uint64_t sum1Ton(uint32_t n) {
	uint64_t s = 0;
	for (int i = 1; i <= n; i++)
		s += i;
	return s;
}

uint64_t sumDiv(uint32_t n) {
	uint64_t s = 0;
	for (int i = 1; i <= n; i++)
		s += 1/i;
	return s;
}

