#include <iostream>
using namespace std;

uint32_t eratos(uint64_t isPrime[], uint32_t n) {
	const uint32_t words = (n+1+63) / 64; // (n+64) >> 6
  for (uint32_t i = 0; i < words; i++) // array must be n+1
		isPrime[i] = -1LL; // 0b111111111111111111
	uint32_t count = 1; // special case for 2
	for (uint64_t p = 3; p <= n; p += 2) // only odd numbers

		// 3->1   5 -->2  7 --> 3  9 -->4   11->5
		// bit test ith bit
		uint64_t i = p >> 1;
	// 0000000000000000000000000000000000000000100  0x8000000000000000ULL
	// any number n % 64 --> n & 63   n % power of 2 == n & power of 2 - 1

	// 5 % 4   = 101     6%4 = 110   7 % 4 =   111

	
	if (isPrime[i / 64] & (1 << (i & 63))) {
			count++;
			for (uint64_t j = i*i; j <= n; j += 2*i)
				isPrime[j] = false; // not prime
		}
  return count;
}

int main() {
	const int n = 1000000000;
	uint64_t* isPrime = new uint64_t0[(n+1+63)/64];
  cout << eratos(isPrime, n) << '\n';
	delete [] isPrime;
}



	
