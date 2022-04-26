#include <iostream>
#include <iomanip>

using namespace std;

int main() {
	int a = 20*20;
	uint64_t b = 3 / 2;
	uint64_t c = 40000 * 80000;
	// 000   0
	// 001   1
	// 010   2
	// 011   3
	// 100  -4
	// 101  -3
	// 110  -2
	// 111  -1
	// -32768 .. 32767
	
	uint64_t d = -1LL;            // 11111111111111111111111111111111111
	uint64_t e = -1;

	double f = 3 / 2;
	double g = 3.0 / 2;
	double h = 2 * 3 / 2;
	double i = 2 / 3 * 2;
	double j = 2.0 / 3 * 2;
	
	cout << a << '\n';
	cout << b << '\n';
	cout << c << '\n';
	cout << d << '\n';
	cout << e << '\n';
	cout << hex << d << '\n';
	cout << hex<<  e << '\n';
}
