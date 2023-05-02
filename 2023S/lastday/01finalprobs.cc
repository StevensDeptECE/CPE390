#include <iostream>
using namespace std;

/*
   count=2
    2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
        0   0   0    0     0     0     0     0     0     0     0
            0     0        0        0        0        0        0
                     0              0              0              0 
*/
// O(n log log n)
uint64_t eratosthenes(uint64_t n) {     // Count Primes
  bool* isPrime = new bool[n+1];
  for (uint64_t i = 0; i <= n; i++)
     isPrime[i] = true;
  uint64_t countPrimes = 0;
  for (uint64_t i = 2; i <= n; i++) {
    if (isPrime[i]) {
        countPrimes++;
        for (uint64_t j = 2*i; j <= n; j += i)
          isPrime[j] = false;
    }
  }

  delete [] isPrime;
  return countPrimes;
}

//   bitpos 0 = rightmost bit of word
//   bitpos 63 = leftmost bit of word
bool isSet(uint64_t v, uint64_t pos) {
    return (v & (1 << pos)) != 0;
}

void clear(uint64_t& v, uint64_t pos) {
    v &=  ~( 1 << pos);
}

// 0..63  is in isPrime[0]
// 64..127 isPrime[1]
// O(n log log n)
uint64_t eratosthenes2(uint64_t n) {     // Count Primes
  const uint64_t size = (n+63)/64;
  uint64_t* isPrime = new uint64_t[size];
  for (uint64_t i = 0; i <= size; i++)
     isPrime[i] = 0xFFFFFFFFFFFFFFFFULL;
  uint64_t countPrimes = 1;
  for (uint64_t i = 3; i <= n; i += 2) { //i =97
    if (isSet(isPrime[i >> 6], i % 64)) { // i%64 == i & 63
        countPrimes++;
        for (uint64_t j = i*i; j <= n; j += i)
          clear(isPrime[j >> 6], j % 64);
    }
  }

  delete [] isPrime;
  return countPrimes;
}



int main(){

}