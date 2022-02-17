
#include<iostream>
#include<cstdint>
using namespace std;

/*
	build a mask with all 1, 0 every k bits
 */
uint64_t buildmask_every_k(uint32_t k) {
  uint64_t m = 0;
	for (uint32_t i = 0; i < 64-k; i += k)
		m |= (1ULL << i);
	return ~m;
}

uint64_t rol(uint64_t v, uint32_t rotate_by) {
	return (v << rotate_by) | (v >> (64-rotate_by));
}

void printbits(const char name[], uint64_t v) {
	cout << name;
	for (uint64_t mask = 1ULL << 63; mask != 0; mask >>= 1)
		cout << ((v& mask) ? 1 : 0);
	cout << '\n';
}

uint64_t adjust_mask(uint64_t v, uint64_t i, uint32_t adj) {
	uint32_t mod = i % adj;
	if (mod == 0)
		return v;
	return rol(v, (adj - mod) / 2);
}
	
int main() {
	uint64_t mask3 = buildmask_every_k(3);
	uint64_t mask5 = buildmask_every_k(5);
	uint64_t mask7 = buildmask_every_k(7);
	uint64_t mask11 = buildmask_every_k(11);

	constexpr int n = 256;
	// for each word after the first special case
	// calculate the position of each mask modulo the starting position
	printbits("m3start  ", mask3);
	printbits("m5start  ", mask5);
	printbits("m7start  ", mask7);
	printbits("m11start ", mask11);

	for (uint64_t i = 1; i < n; i += 128) {
		cout << i << ":\n";
		uint64_t tmask3 = adjust_mask(mask3, i, 3); 
		uint64_t tmask5 = adjust_mask(mask5, i, 5); 
		uint64_t tmask7 = adjust_mask(mask7, i, 7); 
		uint64_t tmask11 = adjust_mask(mask11, i, 11);
		printbits("mask3  ", tmask3);
		printbits("mask5  ", tmask5);
		printbits("mask7  ", tmask7);
		printbits("mask11 ", tmask11);
		uint64_t v = (-1LL) & tmask3 & tmask5 & tmask7 & tmask11;
		printbits("v     ", v);
		for (uint64_t j = 0; j < 64; j++) {
			if (v & (1ULL << j))
				cout << (i+2*j+1) << ' ';
		}
		cout << '\n';
	}
}
