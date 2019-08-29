#include <iostream>

int main() {
	std::cout << "testing\n";
	int a; // integer signed or not? how big? +/- 2.1billion
	unsigned int c; // 0 to 4.2billion
	/*
		926 = 9 * 100 + 2 * 10 + 6

    421
		000 = 0
		001 = 1
		010 = 2
		011 = 3
		100 = 4
		101 = 5
		110 = 6
		111 = 7

signed
    -21
		000 = 0
		001 = 1
		010 = 2
		011 = 3
		100 = -4
		101 = -3
		110 = -2
		111 = -1



	 */
	int a1 = 1234567890;
	float f = 1.234567;
	float f2 = 1.234567e+22;
	double d = 1.23456789012345;
	double d2 = 1.23456789012345e+308;

	long int c = 123456789012345678L;
	long long c = 123456789012345678LL;
	long double LD = 1.2129587129581729587129871251L;

	uint32_t x; // unsigned 32 bit
	uint64_t y;  // unsigned 64 bit
	int32_t z; // signed 32-bit
	uint16_t w;
