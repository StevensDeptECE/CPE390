#include <iostream>
using namespace std;
int main() {
	int a = 1, b = 2;
	int c = a + b;
	int d = 1000000000 + 2000000000;
	int e = a - b;
	unsigned int f = 1 - 2;
	int g = 2 * 3;
	int h = 1000000 * 1000000;
	int ageInSeconds = 20 * 365 * 24 * 60 * 60;
	int ageInSeconds2 = 69 * 365 * 24 * 60 * 60;
	cout << a << '\n';
	cout << b << '\n';
	cout << c << '\n';
	cout << d << '\n';
	cout << e << '\n';
	cout << f << '\n';
	cout << g << '\n';
	cout << h << '\n';
	cout << ageInSeconds << '\n';
	cout << ageInSeconds2 << '\n';
	/*
          unsigned    signed
		000 = 0         =  0
		001 = 1         =  1
		010 = 2         =  2
		011 = 3         =  3
		100 = 4         = -4
		101 = 5         = -3
		110 = 6         = -2
		111 = 7         = -1 
      1
   ====
    000
	 */
}
