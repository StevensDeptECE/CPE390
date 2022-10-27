#include <cstdint>

uint64_t f(uint64_t a[], uint32_t len);

double dot(uint64_t a[], uint32_t b[], uint32_t len);
// ldr x3, [x0, x4 lsl #3]
// ldr w4, [x0, x4 lsl #2]
// mul x3, x4

_Z3dotPmPjj:

int main() {
	uint64_t a[] = {4, 2, 6};
	uint64_t y = f(a, 3);
}
