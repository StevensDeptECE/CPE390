#include <iostream>
using namespace std;

/*
   2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
   1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
       0   0   0   0     0     0     0     0     0     0     0     0
           0     0       0        0        0        0        0        0
                   0              0              0              0


 */

uint32_t eratos(bool isPrime[], uint32_t n) {
  for (uint32_t i = 0; i <= n; i++) // array must be n+1
		isPrime[i] = true;
	uint32_t count = 1; // special case for 2
	for (uint32_t i = 4; i <= n; i+=2)
		isPrime[i] = false; // special case wipe out all even numbers
	for (uint32_t i = 2; i <= n; i++)
		if (isPrime[i]) {
			count++;
			for (uint32_t j = i*i; j <= n; j += 2*i)
				isPrime[j] = false; // not prime
		}
  return count;
}
