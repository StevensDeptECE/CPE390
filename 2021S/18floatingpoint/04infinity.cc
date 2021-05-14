#include <iostream>
#include <cmath>
using namespace std;
//IEEE 754

int main() {
	double x = 0;
	//	int a = 1 / 0; //integer divide by zero, DIE!
	double y = 1 / x; // infinity
	cout << y << '\n';
	double z = -1 / x; //-infinity
	cout << z << '\n';
	double w = y + z; // NaN
	cout << w << '\n';

	cout << sqrt(y) << '\n'; // inf
	cout << sqrt(z) << '\n'; // Nan
	cout << sqrt(w) << '\n'; // NaN
	//we aren't doing it, but C++ does have:	complex a(1.0,2.5);

	double a = y + 1;
	cout << (a == y) << '\n'; // true
  cout << 0.0 / 0.0 << '\n'; //Nan
	cout << sin(y) << '\n'; // ??Nan
	cout << cos(y) << '\n'; // ??
}
