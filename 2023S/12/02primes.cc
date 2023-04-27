#include <iostream>
#include <thread>
using namespace std;
/*
    countPrimes(1, 10)       2 3 5 7 = 4
    countPrimes(10, 20)      11 13 17 19 = 4

*/

// O(p)   omega(1)
bool isPrime(uint64_t p) {
  for (uint64_t i = 2; i < p; i++) {
    if (p % i == 0)
      return false;
  }
  return true;
}
uint64_t countPrimes(uint64_t a, uint64_t b) {
  uint64_t count = 0;
  for (uint64_t i = a; i <= b; i++)
    if (isPrime(i))
      count++;
  return count;
}

void countPrimes2(uint64_t a, uint64_t b, uint64_t* answer) {
  uint64_t count = 0;
  for (uint64_t i = a; i <= b; i++)
    if (isPrime(i))
      count++;
  *answer= count;
}



uint64_t count1 = 0;
uint64_t count2 = 0;
uint64_t count3 = 0;
uint64_t count4 = 0;



int main(int argc, char*argv[]) {
    int n = atoi(argv[1]);
//    cout << countPrimes(1,n) << '\n';
    thread t1(countPrimes2, 2, n/4, &count1);
    thread t2(countPrimes2, n/4+1, n/2, &count2);
    thread t3(countPrimes2, n/2+1, 3*n/4, &count3);
    thread t4(countPrimes2, 3*n/4+1, n, &count4);
    t1.join();
    t2.join();
    t3.join();
    t4.join();
    uint64_t count = count1 + count2 + count3 + count4;   
    cout << count << '\n';
}