#include <iostream>
#include <cmath>
using namespace std;

void quadratic(double a, double b, double c, double& x1, double& x2) {
	double disc = sqrt(b*b - 4*a*c);
	x1 = (-b - disc) / (2*a);
	x2 = (-b + disc) / (2*a);
}

int main() {
	double a, b, c, x1, x2;
	cin >> a >> b >> c;
	cout << a + b << '\n';
	cout << a - b << '\n';
	cout << a * b << '\n';
	cout << a / b << '\n';
	cout << sqrt(a) << '\n';
	cout << cos(b) << '\n';
	quadratic(a,b,c,x1, x2);
	return 0;
}
