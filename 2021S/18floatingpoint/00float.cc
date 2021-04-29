#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
	cout << M_PI << '\n';
	cout << setprecision(15);
	cout << M_PI << '\n';
	cout << setprecision(16);
	cout << M_PI << '\n';
	// float
	// seeeeeeeemmmmmmmmmmmmmmmmmmmmmmm
	// 1 bit sign
	// 8 bits exponent
	// 23 bits mantissa (with hardware leading 1 +1)
	// ~7 digits accuracy
	// 1,234,567,890
	const float Na = 6.023e+23; // 602300000000000000000000
	const float G = 6.67E-11; // .00000000006712345

	/*
		Real numbers are: 
		1. infinitely precise
		2. can be irrational


		in decimal you cannot write an irrational number
		you can't even write a repeating fraction 1/3 = .333333
		sqrt(2) = 1.414...
	 */

	// the error in floating point is relative to the size of the number
	// 101.1000000
	// in binary
	// .1 = 1/2
	// .01 = 1/4
	// .001 = 1/8
	// .011 = 3/8
	

	//0.0 + eps
	//1000000+eps2

	// a + b == b + a (commutivity still holds)
	// a + b + c != a + (b+c); //associativity DOES NOT HOLD
	/*
		1.23
		 .0578
     .00985

		1.23
		 .05
    1.28
     .00985
    1.28


		 .0578
     .00985
     ======
     .0676
    1.23
 =======
    1.29
	 */
	
	// sum1 = 1/1 + 1/2 + 1/3 + ... + 1/100
	// sum2= 1/100 + 1/99 +... + ... + 1/1    approx 5.18
	//	float delta = sum1-sum2

	//floating point range e+38  e-38

	//	s*(2**(e-128)*m

	// 1.5  01.5 00001.5
	

	//	double x; // seeeeeeeeeee mmmm... 57 bit mantissa 1+11+52 + 1mantissa
	//	double y = sin(x);
	// type promotion: integer 0 automatically converted to 0.0f
	for (float x = 0; x <= 10; x++)
		cout << x << ' ';
	cout << '\n';


	/*
		in decimal, 1/3 is not exact
		1/3 = 0.3333333

		1/10 is not exact in binary

		.011   3/8 = .375
		1/10-1/16
		binary representation = .00011011011011
		1.1011011011 x 2** ???  -4
	 */
	cout << setprecision(8);
	for (float x = 0; x <= 10; x+=0.1)
		cout << x << ' ';
	cout << '\n';


	// x = 1 01111111  00000000000000000000000 = -1.0
	// x = 0 10000000  10000000000000000000000 = 3*(2**1) = 6
	//roundoff error slowly poisons your answer.
	// one of the harsh realities of life, like death, taxes, friction
	float sum = 0.0;
	for (int i = 1; i <= 10; i++) {
		sum += 1.0f/i; // type promotion
		cout << "sum = " << sum << '\n';
	}

#if 0
	// all these are the same
	for (float i = 1; i <= 10; i++) {
		sum += 1/i; // type promotion
		cout << "sum = " << sum << '\n';
	}

	for (float i = 1; i <= 10; i++) {
		sum += 1.0f/i; // type promotion
		cout << "sum = " << sum << '\n';
	}

	for (int i = 1; i <= 10; i++) {
		sum += 1/float(i); // type promotion
		cout << "sum = " << sum << '\n';
	}
#endif
	
}
