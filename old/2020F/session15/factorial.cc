#include <iostream>
using namespace std;

int fact(int n ) {
	int prod = 1;
	for (int i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

uint64_t fact2(int n) {
  if ( n <= 1 )
		return 1;

	return n * fact2(n-1);
}

uint64_t count(int n) {
	if (n == 0)
		return 0;

	return 1+ count(n-1);
}

// 1, 1, 2, 3, 5, 8, 13, 21, ...
int fibo(int n) {
	if (n <= 2)
		return 1;
	
	return fibo(n-1) + fibo(n-2);
}
int main() {
	cout << fact(5) << '\n';
	cout << fact(10) << '\n';
	cout << fact2(15) << '\n';
	cout << count(1000) << '\n';
}
