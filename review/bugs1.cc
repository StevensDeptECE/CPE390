#include <iostream>
#include <cmath>
using namespace std;

// sum the numbers from a to b inclusive
uint64_t sum(int a, int b) {
	int s;
	for (int i = a; i < b; i++)
		s += i;
	return s;
}
// recursive factorial
uint64_t factr(int n) {
	if (n == 0)
		return 1;
	return n * factr(n-1);
}

// return n factorial (n!)
uint64_t fact(uint32_t n) {
	int prod = 0;
	for (uint32_t i = n; i >= 0; i--)
		prod *= i;
	return prod;
}

double choose(int n, int r) {
	return fact(n) / (fact(r) * fact(n-r));
}

double mean(const double x[], uint32_t len) {
	double sum = 0;
	for (uint32_t i = 0; i <= len; i++)
		sum += x[i];
	return sum / len;
}

// reverse the array x
void reverse(int x[], int len) {
	for (int i = 0; i < len; i++)
		swap(x[i], x[len-i]);
}

double f1(double x) { return x*x-2; }

typedef double (*FuncOneVar)(double);
double bisect(FuncOneVar f, double a, double b) {
	double x;
	do {
		x = (a+b)/2;
		double y = f(x);
		if (y > 0)
			b = x;
		else if (y < 0)
			a = x;
		else
			return x;
	} while (a != b);
	return x;
}

int main() {
	cout << "sum(3,5)=" << sum(3,5) << '\n';
	//	cout << "factr(-1)=" << factr(-1) << '\n';	
	//	cout << "fact(10)=" << fact(10) << '\n';
	//	cout << "choose(52,6)=" << choose(52,6) << '\n';
	double a1[] = {10, 20, 30, 40};
	double a2[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
	double a3[] = {1000, 2000, 3000, 4000, 5000, 6000};
  cout << "mean(a1)=" << mean(a1,4) << '\n';
	cout << "mean(a2)=" << mean(a2,9) << '\n';
	cout << "mean(a3)=" << mean(a3,6) << '\n';

	int a[] = {50, 40, 30, 20, 10};
	reverse(a, 5);
	for (int i = 0; i < sizeof(a)/sizeof(int); i++)
		cout << a[i] << ' ';
	cout << '\n';

	cout << "Find root of f1(x)=" << bisect(f1, 0, 5) << '\n';
	cout << "Find root of sin(x)=" << bisect(sin, 5, 8) << '\n';
}
