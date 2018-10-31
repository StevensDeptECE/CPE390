#include <iostream>
using namespace std;

extern uint32_t eratosthenes(uint64_t n);

int main() {
	uint64_t n = 1000000000;
	uint64_t* sieve = new uint64_t[(n+63)/64];
	uint32_t count = eratosthenes(sieve, n);
	cout << count << '\n';
}
