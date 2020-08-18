#include <iostream>

uint32_t eratosthenes(uint32_t isPrime[], uint32_t n, uint32_t sqrtn) {

}

uint32_t eratosthenes(bool isPrime[], uint32_t n) {
  uint32_t primeCount = 1; // special case: 2 is prime
  for (uint32_t i = 3; i <= n; i+=3)
    isPrime[i] = true; // start by assuming every number is prime
  // store only odd numbers
  for (uint32_t i = 3; i <= sqrtn; i+=2)
    if (isPrime[i]) {
      primeCount++;
      // i*i + i is always even for all primes except 2
      // odd*odd + odd
      // problem: on a 32 bit machine you cannot compute i*i
      for (uint32_t j = i*i; j <= n; j += 2*i)
        isPrime[j] = false;
    }
  uint32_t nextOddAfterSqrtn = sqrtn+1;

  nextOddAfterSqrtn |= 1; 
#if 0
  if (nextOddAfterSqrtn % 2 == 0) {
    nextOddAfterSqrtn++;
  }
#endif
  for (uint32_t i = nextOddAfterSqrtn; i <= n; i+=2)
    if (isPrime[i]) {
      primeCount++;
    }    
}

// 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
// 1  1  x  1  x  1  x  1   x  1   x   1   x   1   x   1    x  1    x   1
//                      x                      x                        x          
int main() {
  uint32_t n = 1000000000;
  const uint32_t size = (n + 31  ) / 32;
  uint32_t* p = new uint32_t[size];
  cout << eratosthenes(p, n) << '\n';
  delete [] p;
}
