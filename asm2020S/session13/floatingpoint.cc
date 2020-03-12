#include <iostream>
#include <cmath>
using namespace std;

// given a,b,c compute the two real roots x1, and x2
void quadratic(double a, double b, double c, double& x1, double& x2) {
	double disc = sqrt(b*b - 4*a*c);
	x1 = (-b - disc) / (2*a);
	x2 = (-b + disc) / (2*a);
}
	


double mysqrt(double x) {
	double guess = x/2;
	do {
		guess = (guess + x/guess) / 2;
	} while (abs(guess - x/guess)> .00000001);
	
}
int main() {
	int i = 2;
	g(i); // will print i (2) but will also set i = 99
	
	double a, b, c, x1, x2;
	cin >> a >> b >> c;
	cout << a + b << '\n';
	cout << a - b << '\n';
	cout << a * b << '\n';
	cout << a / b << '\n';
	/*
		ldr r0, // [pc, #????] [cout]

		vldr d1, [somelocation]
		vldr d2, [someotherlocation]
		vadd.f64 d0,d1,d2
 	  bl      _ZNSo9_M_insertIdEERSoT_ // print
   	vsub.f64 d0,d1,d2
 	  bl      _ZNSo9_M_insertIdEERSoT_ // print
    vsqrt.f64 d0, d1    @ how the ??? do you compute this?

	 */
	cout << sqrt(a) << '\n';
	cout << cos(b) << '\n'; // Chebychev, Tchebychev polynomial approx, also rational approx
	quadratic(a,b,c,x1, x2);
	return 0;
}
