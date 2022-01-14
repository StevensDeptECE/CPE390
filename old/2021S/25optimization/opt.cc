#include <iostream>
#include <cmath>
using namespace std;

int f1(int a) {
	return a*5;
}

int f2(int a) {
	return a * 32; // a << 5
}

int f3(int a) {
	return a / 32; // a >> 5                 1010101010101010101010xxxxx
}

uint32_t f4(uint32_t a) {
	//	return a & 3;  // 00000000000000000000000000011
	return a % 4; // 0..3
	// 0 % 4 == 0
	// 1 % 4 == 1
	// 2 % 4 == 2
	// 3 % 4 == 3
	// 4 % 4 == 0

	// a / 4   --> a >> 2 (throw out the rightmost 2 bits)
	// a % 4   --> get the last two bits
	return a % 32; // equivalent to a & 31
}

//inline code requires that the compiler know what the code is!
int f5(int a) {
	return a*a;
}


inline int f6(int a) {
	int sum = 0;
	for (int i = a; i < 2*a; i += 3)
		sum += i;
	return sum;
}

//inline code requires that the compiler know what the code is!
int f7(int a, int b, int c) {
	return (a*b + c) / a; 
}


double poly(double c[], int n, double x) {
	// c[0]*x**n + c[1] * x**(n-1) + c[2] * x**(n-2) + ... c[n]
	//	double y = pow(x, 2); // x*x
	//		double y = pow(x, 3); // x*x*x
	double sum = 0;
	for (int i = 0; i <= n; i++)
		sum += c[i] * pow(x, n-i);
	return sum;
}

int main() {
	cout << f5(3) << '\n';
	cout << f6(3) << '\n';
	cout << f7(1,2,3)  << '\n'; // turns into the constant 5!
}
