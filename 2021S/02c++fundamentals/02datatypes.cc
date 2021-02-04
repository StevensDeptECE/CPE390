#include <iostream>
using namespace std;

/*
	The old data types in C++ are not portable because they can be different
	on various platforms
	For example, on an Arduino int is 16 bits, but on your laptop it is 32 bits

	The C++11 portable types

	uint8_t, uint16_t, uint32_t, uint64_t,  (unsigned)
	int8_t, int16_t, int32_t, int64_t (signed)

	are ugly and hard to type but at least they are portable.
 */
int main() {
	int a = 2; // not well defined. size? signed?
	cout << sizeof(a) << '\n';
	a = -1;
	cout << a << '\n';
	long b;
	long long c;
	uint32_t u1;
	uint64_t u2;
	return 0;
}
