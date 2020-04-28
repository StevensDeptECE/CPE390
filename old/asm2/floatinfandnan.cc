#include <iostream>
#include <cmath>
using namespace std;

int main() {
	float f1 = 1.0 / 2.0;
	float f2 = 1.0 / 0.0; // INFINITY IEEE-754
	float f3 = -1.0 / 00; //-INFINITY
	cout << sqrt(f2);
	cout f2 + 1;
	cout << sin(f2);  // NaN

	float f4 = f2 + f3;
	float f5 = 0.0 / 0.0; // NaN
	
