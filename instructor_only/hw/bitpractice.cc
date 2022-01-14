#include <iostream>
using namespace std;

int main() {
	uint32_t a = 0xF1234567;
	uint32_t b = 0xDEADBEEF;

	cout << hex << (a & b) << " " << (a | b) << " " << (a ^ b) << '\n';
	cout << ~a << '\n';
}
	
