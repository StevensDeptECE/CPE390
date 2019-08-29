#include <iostream>
using namespace std;

extern uint32_t eratosthenes(uint32_t primeBits[], uint32_t n);

int main() {
	uint32_t n = 1000000000;
	uint32_t* sieve = new uint32_t[(n+31)/32];
	uint32_t count = eratosthenes(sieve, n);
	cout << "Number of primes up to " << n << " = " << count << '\n';
	delete [] sieve;
}
