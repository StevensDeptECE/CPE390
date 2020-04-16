#include <iostream>
#include <iomanip>
#include <cmath>
#include <limits>
using namespace std;

/*
	Author: Dov Kruger
	For details on double precision see:
	https://en.wikipedia.org/wiki/Double-precision_floating-point_format
*/

typedef std::numeric_limits< double > dbl;

double findEpsilon() {
	double x = 1.0;
	cout.precision(dbl::max_digits10);
	while (1.0 + x > 1.0) {
		cout << x << '\n';
		x *= 0.5;
	}
	return x;
}

void displayBits(const char msg[], double x) {
	uint64_t* p = (uint64_t*)&x;
	uint64_t v = *p;
	cout << msg << '\t' <<
		"seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\n";
	cout << msg << '\t';
	for (int32_t i = 63; i >= 0; i--)
		cout << ((v & (1LL << i)) ? 1 : 0); //ternary operator. not part of this course
	cout << "\n\n";
}

double operators(double x, double y) {
	double t1 = x + y;
	double t2 = x - y;
	double t3 = t1 * t2;
	double t4 = t1 / t2;
	return t3 + t4;
}
	

int main() {
	double d0 = 1.0;
	double d1 = 2.0;
	double d2 = d0 * d1; // is C++ smart enough to know that these "variables" are constants?
	displayBits("0.5=", 0.5);
	displayBits("1.0=", d0);
	displayBits("2.0=", d1);
	displayBits("Inf=", 1.0 / 0.0);
	displayBits("-Inf=", -1.0 / 0.0);
	displayBits("NaN=", 0.0 / 0.0);
	double d3 = 1.0 / rand();
	cout << sin(d3) << '\n';
	cout << cos(d3) << '\n';
	cout << tan(d3) << '\n';
	cout << asin(d3) << '\n';
	cout << acos(d3) << '\n';
	cout << atan(d3) << '\n';
	cout << sqrt(d3) << '\n';
	cout << pow(d3, 17) << '\n';
	cout << exp(d3) << '\n';
	cout << log(d3) << '\n';
	cout << fmod(d2, d3) << '\n';
		
	findEpsilon();
	return 0;
}
