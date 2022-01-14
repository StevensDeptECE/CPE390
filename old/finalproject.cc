#include <iostream>
#include <cstdint>
#include <cmath>
using namespace std;

/*

  A prime is a number divisible only by 1 and itself
  n = 1000000000  (this program would take 1Gbyte)

  store each true/false into bits: 125MB
  store only odd numbers           62.5MB

  2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 
  1 1 0 1 0 1 0 0 0  1  0  1  0  0   0  1  0  1  0  0  0  1  0  0 



  2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 
    1   1   1   0     1     1     0     1     1     0     1     0
 

  97*97 + 2*97 + 2*97 + ...

  n log log n
*/

uint32_t eratosthenes(bool primes[], uint32_t n) {
	uint32_t count = 0;
	for (uint32_t i = 2; i <= n; i++)
		primes[i] = true; // assume every number is prime
	for (uint32_t i = 2; i <= n; i++)
		if (primes[i]) {
			count++;
			for (uint32_t j = i+i; j <= n; j += i)
				primes[j] = false;
		}	
  return count;
}

uint32_t eratosthenes2(bool primes[], uint32_t n) {
	uint32_t count = 1; // special case 2 = prime
	for (uint32_t i = 3; i <= n; i += 2)
		primes[i] = true; // assume every number is prime
	uint32_t end  = sqrt(n);
	for (uint32_t i = 3; i <= n; i += 2)
		if (primes[i]) {
			count++;
			if (i <= end) {
				// i*i will overflow a 32 bit integer beyond
				// 1. check overflow, and if it does don't do the loop...
				// 2. go up to sqrt(n), not n
				for (uint32_t j = i*i; j <= n; j += 2*i)
					primes[j] = false;
			}
		}	
  return count;
}


int main(int argc, char* argv[]) {
	uint32_t n = atoi(argv[1]);
	bool* primes = new bool[n+1];
  int countPrimes = eratosthenes(primes, n);
	cout << "count primes using eratosthenes: " << countPrimes << '\n';
	countPrimes = eratosthenes2(primes, n);
	cout << "count primes using eratosthenes: " << countPrimes << '\n';
	delete [] primes;
}
