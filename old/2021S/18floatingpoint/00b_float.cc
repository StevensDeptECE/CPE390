#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main() {
	float f; // single precision  32-bit  7-8 digits 1,234,567,890
	// seeeeeeeemmmmmmmmmmmmmmmmmmmmmmm  1 + 8 + 23
	// 8 bit exponent -128 ..127
	f = 6.022e+23;
	const float G = 6.67e-11;

	// e+38 e-38
	
	double d; // double precision 64 bits  15-16 digits
	// seeeeeeeeeee  exp=-1024..1023
	// E-308 E+308

	long double pi = 3.14159265358979323; // non-standard, don't know how big

	// quad precision (software available from gnu)

	cout << sizeof(float) << '\n';
	cout << sizeof(double) << '\n';
	cout << sizeof(long double) << '\n';
	cout << setprecision(19) << pi << '\n';

	for (float x = 0; x <= 10; x++)
		cout << x << ' ';
	cout << '\n';

	cout << setprecision(8);

	for (float x = 0; x <= 10; x+=0.1)
		cout << x << ' ';
	cout << '\n';
#if 0
	//infinite loop, let's chop this
	for (float x = 100000000; x <= 100000000.0f + 1000; x+=1)
		cout << x << ' ';
	cout << '\n';
#endif

	int x = 2, y = 0;
	//	cout << x/y ; // says floating point exception, but they lie, it's integer!

	float sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += 1/float(i);
		cout << "sum=" << sum << '\n';
	}
}
	
 	
