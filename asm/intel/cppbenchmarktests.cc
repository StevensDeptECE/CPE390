#include <cstdint>
using namespace std;

uint64_t empty(uint32_t n) {
	return 0;
}

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

uint64_t sumDiv2(uint32_t n) {
	uint64_t s = 0;
	for (int i = 1; i <= n; i++)
		s += 1/i + 2/i;
	return s;
}


void empty2(uint64_t* p, uint32_t n) {
}

// WARNING: This one won't work because C++ will optimize it out of existence
// write this in assembler and it will be fine
void readMem(uint64_t* p, uint32_t n) {
	uint64_t sum = 0;
	for (int i = 0; i < n; ++i)
		sum += p[i];
}

// write zeros into a block of memory n elements long, 64 bits at a time
void writeMem(uint64_t* p, uint32_t n) {
	for (int i = 0; i < n; ++i)
		p[i] = 0;

}

/**
	 Read and write memory.  Repeating access of memory
	 should be affected by cache, but in this case reading first
	 won't help writing because that writing should have to write 
	 through to main memory.  So we will benchmark writeRead also.
*/
void readWriteMem(uint64_t* p, uint32_t n) {
  readMem(p, n);
	writeMem(p, n);
}

/**
	 Write then read memory.
	 Cache should help this but if n is big enough we will miss cache and slow down.

*/
void writeReadMem(uint64_t* p, uint32_t n) {
	writeMem(p, n);
  readMem(p, n);
}
