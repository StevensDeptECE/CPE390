
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
	// go in a loop from start to end checking for primes
  (*primeCounter)++;
	// 	cout << *primeCounter << " start=" << start << " end=" << end << '\n';
}

/*
	your name
	 pledge

	 time for single-threaded: 

	 time for 2 threads: 

   for 50% bonus
   time for 4 threads:

 */

int main(int argc, char* argv[]) {
	int n = atoi(argv[1]);
	int a = n/2;
  thread t1(countPrimes, &primeCount1, 2, a);
  thread t2(countPrimes, &primeCount2, a+1, n);
	//  thread t3(countPrimes, &primeCount1, 2, a);
	//  thread t4(countPrimes, &primeCount1, a+1, n);

	t1.join();
	t2.join();

	// right now, it says there are only two primes. Your job is to make it count primes!
	cout << "number of primes = " <<  (primeCount1 + primeCount2) << '\n';

}
