#include <iostream>
#include <cmath>
using namespace std;

class CubicPolynomial {
private:
	double a, b, c, d;
public:
	CubicPolynomial(double a, double b, double c, double d) : a(a), b(b), c(c), d(d) {	}
	double eval(double x) const {
		return a * pow(x, 3) + b * pow(x,2) + c * x + d;
		return ((a * x + b) * x + c) * x + d;
	}
};

int main() {
	double x = 1;

	const CubicPolynomial p(1, 3, 3, 1); // ^ means exponentiation here!! x^3 + 3x^2 + 3x + 1
	cout << p.eval(x) << '\n';
}
