#include <iostream>
#include <cmath>
using namespace std;

// what is the root of function f??? -1.414 +1.414
double f1(double x) { return x*x - 2; }
double f2(double x) { return x*x*x - 2; }

double f3(double x, double y) { return x*y; }

typedef double (*FuncOneVar)(double);

double bisection(FuncOneVar f, double a, double b, double eps) {
  double y0 = f(a), y1 = f(b);
	double x, y;
	//	while (a != b) { // equality in floating point is ALMOST MEANINGLESS
	while (abs(b-a) > eps) { // keep going until a and b are "close enough"
		x = (a + b) / 2;
		y = f(x);
		if (y > 0)
			b = x;
		else
			a = x;
	}
	return x;
}


int main() {
	cout << bisection(f1, 0, 3, .0001) << '\n';
	cout << bisection(f2, 0, 3, .001) << '\n';
	cout << bisection(sin, 2, 5, .001) << '\n';
	// ILLEGAL: f3 doesn't match	cout << bisection(f3, 0, 3, .0001) << '\n';

	
}
