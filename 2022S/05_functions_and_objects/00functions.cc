#include <iostream>
using namespace std;

int add(int a, int b) {
	return a + b;
}

// return the hypotenuse of a,b (function prototype)
double hypot(double a, double b);

int factorial(int n) { // n*(n-1)*(n-2)*...1  //O(n)
  int prod = 1;
	for (int i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

int fact(int n) {
  if ( n == 1  )
		return 1;
	return n * fact(n-1); // tail recursion can be optimized into a loop
}

int count(int n) {
  int sum = 0;
	for (int i = 0; i < n; i++)
		sum++;
	return sum;
}

int count2(int n) {
	if ( n == 0 )
		return 0;

	return 1 + count2(n-1);
}

// phi = (1+sqrt(5))/2
// 1 2 3 4     5    6       7     8
// 1 1 2 3     5    8       13    21 34 55 ...
//   1 2 1.5   1.66 1.625

double fibo(int n) {
	double a = 1, b = 1, c;
	//a=1 1 2
	//b=1 2 3
	//c=2 3 5
	for (int i = 0; i < n; i++) {
		c = a + b;
		a = b;
		b = c;
	}
	return c;
}

//O(2^n)
double fibo2(int n) {
  if (n <= 2 ) {
		return 1;
	}
  return fibo2(n-1) + fibo2(n-2);
}





int main() {
//	10,000 lines of code
//  cout << add(2,3) << '\n';
	//optimzer will generate:

	cout << add(2,3) << '\n';
	cout << factorial(5) << '\n';
	cout << fact(5) << '\n';
	// MMU crashes this program with with segfault
	// (too much stack used)
	//cout << count2(1000000) << '\n';
	cout << fibo2(50) << '\n';
}
