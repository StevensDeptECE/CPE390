#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;
double f(double x) { // root is at x = +/- sqrt(2)
	return x*x - 2;
}

double bisection(double a, double b) {
	double x;
	//	for (int i = 0; i < 10; i++) {
	while (abs(b-a) > .0000001) {
		x = (a+b)/2;
		double y = f(x);
		if (y > 0)
			b = x;
		else if (y < 0)
			a = x;
		else
			return x;
		cout << "x=" << x << '\n';
	}
	return x;
}

int main() {
	double a = 1.0, b = sqrt(3);
	cout << bisection(a,b);
	
	
}
