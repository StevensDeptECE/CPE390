#include <iostream>
#include <thread>

using namespace std;

uint64_t add(int a[], int n) {
	uint64_t sum = 0;
	for (int i = 0; i < n; i++)
		sum += a[i];
	return sum;
}

int main() {
	const int n = 10000000;
	int* a = new int[n]; //Amdahl's law: the amount you can improve with parallel coding is limited by the sequential part
	for (int i = 0; i < n; i++)
		a[i] = i;
	
  thread t1(add, a, n/3);
	thread t2(add, a+n/3, n/3);
	thread t3(add, a+n/3+n/3, n/3);
  t1.join();
	t2.join();
	t3.join();
}

	
