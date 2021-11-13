#include <cmath>
#include <iostream>
#include <iomanip>
//C++20 #include <numbers>
// g++ -std=c++20 ...
// std::numbers::pi
//const double pi = 3.14159265358979;

using namespace std;

double f(double x) { return x*x - 3; }

double bisection(double a, double b, double eps) {
	double ya = f(a), yb = f(b);
	double x, y;
	do {
		x = (a+b)/2;
		y = f(x);
		if (y > 0) {
      b = x;
		} else if (y < 0) {
      a = x;
		}
		//	}	while (y != 0);
	} while (abs(b-a) > eps ); // NEVER USE == or != for floating point
	return x;
}



int main() {
	cout << bisection(0, 3, .0000001) << '\n';
	cout << setprecision(8);
	for (float x = 0; x <= 10; x += 0.1)
		cout << x << ' ';

	cout << '\n';

	/*
		1.23
		 .0879
    1.31
     .0656
    1.37

		 .0879
     .0656
     =====
     .15
		1.23
========
    1.38

	 */
	


	
}
