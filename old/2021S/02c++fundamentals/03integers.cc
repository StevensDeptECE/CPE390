#include <iostream>
#include <cstdint>
using namespace std;

/*
	The old data types in C++ are not portable because they can be different
	on various platforms
	For example, on an Arduino int is 16 bits, but on your laptop it is 32 bits

	The C++11 portable types

	uint8_t, uint16_t, uint32_t, uint64_t,  (unsigned)
	int8_t, int16_t, int32_t, int64_t (signed)

	are ugly and hard to type but at least they are portable.


  what is a bit? BInary digiT (1 or 0) HI and LOW (NOT on or off)
  what is a byte? IBM 8 bits
  bb = 00 01 10 11 = 4 combinations
  bbb= 000 001 010 011 100 101 110 111 = 8 combinations

  How many  different values in one byte? 256 = 2 to 8    Please remember ^ is XOR in C++

  what can you store in 8 bits? 00000000 ... 111111111

  'A' = 65 = 001000001

  2 to 10 = 1024 = 1k
  2 to 20 = 1024*1024 = 1M
  2 to 30 = 1024*1024*1024 = 1G
  32 bits have 4G different values
 */
int main() {
	int a = 2; // not well defined. size? signed?  on our PC this is 32 bits (4 bytes) 2 to 32
  // 0000
  // 0001
  // 0010
  // 0011
  // 0100
  // 0101
  // 0110
  // 0111
  // 1000
  // 1001
  // 1010
  // 1011
  // 1100
  // 1101
  // 1110
  // 1111

	cout << sizeof(a) << '\n';
	a = -1;
	cout << a << '\n';
	long b = 12345678901; // does 12 billion fit into a long?
  cout << "sizeof(c)=" << sizeof(b) << '\n';
  cout << b << '\n';
	long long c;
  cout << "sizeof(c)=" << sizeof(c) << '\n';
  cout << "c=" << c << '\n';

	uint32_t u1 = 3*1024*1024;
	uint64_t u2 = 123456789012345678ULL;
  cout << "u1=" << u1 << '\n';
  cout << "u2=" << u2 << '\n';
  uint8_t u3 = 256; // 0, 1, 2, ... 255, 256 is too big so it stores the low 8 bits
  cout << "u3=" << (int) u3 << '\n';
  u3 = -1;
  cout << "u3=" << (int) u3 << '\n';

	return 0;
}
