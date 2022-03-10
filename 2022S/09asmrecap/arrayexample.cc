#include <cstdint>

uint64_t sumit(	uint64_t a[], uint32_t n) {
	uint64_t sum = 0;
	for (int i = 0; i < n; i++)
		sum += a[i];
	return sum;
}
	
	
