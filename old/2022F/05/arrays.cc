#include <iostream>
using namespace std;

//                   %rcx           %rdx
uint64_t sum(uint64_t a[], uint64_t len) {
	uint64_t s = 0; // %rsi
  for (uint64_t i = 0; i < len; i++) {
		s += a[i];
	}
	return s; // %rax
}
