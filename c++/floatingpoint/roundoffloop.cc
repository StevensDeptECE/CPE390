#include <iostream>
#include <iomanip>
using namespace std;

int fact(int n) {
	int prod = 1;
	for (int  i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

uint64_t fact2(int n) {
	uint64_t prod = 1;
	for (int  i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

double fact3(int n) {
	double prod = 1;
	for (int  i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

int main() {
	for (int i = 0; i < 100; i++)
		cout << i << ' ';
	cout << "\n\n";

	for (float i = 0; i < 100; i += 0.1)
		cout << i << ' ';
	cout << "\n\n";

	//seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	// sign = 1 bit
	// exponent = 11 bits
	// mantissa = 52 effective 53
	// .1mmmmmmmmmmmmm
	cout << setprecision(15);
	for (double i = 0; i < 100; i += 0.1)
		cout << i << ' ';
	cout << "\n\n";
	for (int i = 1; i <= 35; i++) {
		cout << fact(i) << '\t'  << fact2(i) << '\t'  << fact3(i) << '\n';
	}
}

