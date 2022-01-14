#include <iostream>
#include <cmath>

int main() {
	//	int a = 1 / 0; // DIE!!!!
	double x = 0;
	double y = 1.0 / x; // IEEE 754
	cout << y << '\n';
	double z = -1.0 / x;
	cout << z << '\n'; // -inf

	cout << (y+1) << '\n';
	cout << (2*y) << '\n';
	if (y+1 > y) { // can't compare infinities!!!!
		cout << " NOPE\n";
	}

	// Georg Kantor

	double dontknow = y + z; // NaN (not a number)

	double dontknow2 = 0.0 / 0.0;  ///NaN

	// what is sqrt(y);
	// what is sqrt(z);
	// wha is sin(y)
	
}
