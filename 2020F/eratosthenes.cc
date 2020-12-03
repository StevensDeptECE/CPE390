#include <iostream>

// 31 ... 9  8  7  6  5  4  3  2  1  0
// 63     19 17 15 13 11 9  7  5  3  1
// 1      0     1     1     1  1  1  1
// set all elements to 0xFFFFFFFF

//   0     1      2     3     4     5      6      7
//  00    01     10    11    00    01     10     11
bool test(uint32_t bits[], uint32_t pos) { // pos = 32
	// split pos into the word in the array, and the bit position within the word
	// bits[pos / 32] & (1 << (pos % 32 )
	return bits[ pos >> 5 ]  & (1 << (pos & 31 ) ) ;
}

void clear(uint32_t bits[], uint32_t pos) {
	bits[ pos >> 5 ]  &= ~(1 << (pos & 31 ) ) ; // on ARM use BIC (no NOT)
}


uint32_t eratosthenes(uint32_t isPrime[], uint32_t n) {
  // set all odd numbers prime using bit array (fast)

}

uint32_t eratosthenes(bool isPrime[], uint32_t n) {
  uint32_t primeCount = 1; // special case: 2 is prime
  for (uint32_t i = 3; i <= n; i+=2)
    isPrime[i] = true; // start by assuming every number is prime
  // store only odd numbers
	uint32_t sqrtn = sqrt(n);
  for (uint32_t i = 3; i <= n; i+=2)
    if (isPrime[i]) {
      primeCount++;
			if (i <= sqrtn)
				// i*i + i is always even for all primes except 2
				// odd*odd + odd
				// problem: on a 32 bit machine you cannot compute i*i
				for (uint32_t j = i*i; j <= n; j += 2*i)
					isPrime[j] = false;
    }
}

// 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
// 1  1  x  1  x  1  x  1   x  1   x   1   x   1   x   1    x  1    x   1
//                      x                      x                        x          
int main() {
  uint32_t n = 1000000000;
  const uint32_t size = (n+1 + 31  ) / 32 / 2;
  uint32_t* p = new uint32_t[size];
  cout << eratosthenes(p, n) << '\n';
  delete [] p;
}
