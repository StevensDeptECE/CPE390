
#include <iostream>
#include <thread>
using namespace std;

/*
	Count prime numbers using two threads
	In order to avoid race condition, use two separate counters

 */

int primeCount1 = 0;
int primeCount2 = 0;

void countPrimes(int* primeCounter, int start, int end) {

  (*primeCounter)++;
	cout << *primeCounter << " start=" << start << " end=" << end << '\n';

}

/*
	your name
	 pledge

	 time for single-threaded: 

	 time for 2 threads: 

   for 50% bonus
   time for 4 threads:

 */

int main() {
	int n;
	cout << "Please enter maximum number for primes=";
	cin >> n;
	int a = n/2;
  thread t1(countPrimes, &primeCount1, 2, a);
  thread t2(countPrimes, &primeCount2, a+1, n);
	//  thread t3(countPrimes, &primeCount1, 2, a);
	//  thread t4(countPrimes, &primeCount1, a+1, n);

	t1.join();
	t2.join();

	cout << "number of primes = " <<  (primeCount1 + primeCount2) << '\n';

}
