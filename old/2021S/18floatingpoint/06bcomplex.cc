#include <iostream>
#include <cmath>
using namespace std;

#include "Complex.hh"

int main() {
	Complex a(2,1.5);
	Complex b(1.3, -1.1);
	Complex c = a + b;
	//	Complex d = a - b;
	//	Complex e = a * b;
	cout << c << '\n';
	cout << d << '\n';
	cout << e << '\n';
}
