#include <iostream>
#include <iomanip>
#include <cmath>
#include <numbers>
using namespace std;
using namespace std::numbers;

int main() {
	uint32_t a; //4 bytes 0..4.2billion   4'200'000'000

	float f = 1.2345678f; // single precision IEEE 754
  f = 12.345678;
	f = 123.45678;
	f = 1.2345678e+23; // x 10 to 23
	f = 1.234e+38;
	f = -1.234e+38;
	f = 1.234e-38;
	/*
		 sign = +/-
		 exponent (where to put the binary point)
		 mantissa (the digits)
		 10101101100010101.0101010101001

		 1.0 = 1
		 10.0 = 2
		 101.0 = 5
		 .1  = 1/2
		 .01  = 1/4
		 .001 = 1/8
		 3/8 = .375 = .011
		 
		 1/2 = 0.5
		 1/3 = .33333333333333333333333333

		 1/10 = 0.1 (in decimal) = .00011001100110011...
		 
	 */
	double d = 1.23456789012345;
	d = 1.234e+308;
	d = 1.234e-308;
	long double e;
	// quad precision is coming
	// half precision is here

	cout << setprecision(12);
#if 0
	for (float x = 0; x < 10; x += 0.1f)
		cout << x << " ";
	cout << '\n';
#endif
#if 0
	// never use != or == it's MEANINGLESS with float
	for (float x = 0; x <= 10; x += 0.1f)
		cout << x << ' ';
	cout << '\n';
#endif

	// integer divide by zero? CRASH! SIGFPE (floating point exception)
	//	int x = 1 / 0;
	//	cout << "What happens???" << x << '\n';

	float x = 0.0;
	float y = 1.0 / x; // INF!
	cout << y << '\n';
	y*= 2;
	cout << y << '\n';
	cout << sqrt(y) << '\n';
	double z = -3 / x; // -inf
	cout << z << '\n';
	cout << (y + z) << '\n'; // nan (Not a Number) WE DON'T KNOW

	cout << sin(0) << '\n';
	cout << sin(2*pi) << '\n';
	cout << sin(y) << '\n'; // sin(inf) = NAN

	/*
		What are the properties of numbers
		a + b == b + a  (commutative)

		(a + b) + c != a + (b + c) THIS DOES NOT WORK WITH FLOATING POINT

		1.23
		 .069
		 .059

 		1.23
		 .069
=========
    1.29
		 .059
		====
		1.34

		 .069
		 .059
     ====
		 .128
		1.23
		1.35

	*/


	
}
