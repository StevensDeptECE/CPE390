#include <iostream>
using namespace std;

uint64_t add(uint64_t a, uint64_t b) {
	return a + b;
}
             // rcx              rdx
uint64_t sub(uint64_t a, uint64_t b) {
	return a - b;
}

uint64_t prod(uint64_t a, uint64_t b) {
	uint64_t p = 1;
	for (; a <= b; a++)
		p *= a;
	return p;
}

uint64_t max(uint64_t a, uint64_t b) {
	if (a > b)
		return a;
	return b;
}

