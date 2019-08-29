#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

void printhex(double v) {
  double* p = &v;
	uint64_t bits = *(uint64_t*)p;
	cout << hex << setfill('0') << setw(16) << bits << '\n';
}

void printhex(float v) {
	cout << hex << setfill('0') << setw(8) << *(uint32_t*)&v << '\n';
}

void printthebits() {
		float x = 0.0;
	printhex(x);

	double y = 0.0;
	printhex(y);

	x = 1.0;
	printhex(x); // 3f8   0 011 1111 1 000
	y = 1.0;
	printhex(y); //3ff000000000     0 011 1111 1111
	y = 2.0;
	printhex(y); //400000000000     0 1000000000000
	y = 1.0e-10;
	printhex(y);
	y = 1.0 / (1024*1024*1024);
	printhex(y); // 3e10000000000000  0011 1110 0001 0000 0000 0000 ...
}

int main() {
	printthebits();
	double x = 0.0;
	double y = -0.0;
	cout << (x == y) << '\n';
	//	int a = 1 / 0;	//divide by 0 exception
	
	x = 1.0 / 0.0;
	y = -1.0 / 0.0;
	cout << x << '\t' << y << '\n';
	double z = 2*x;
	cout << (x == z) << '\n';
  cout  << x + y << '\n';	
	cout << sqrt(x) << '\n';
	cout << sqrt(y) << '\n';
	cout << setprecision(15) << sqrt(2.0) << '\n';
	cout << sqrt(-1.0) << '\n';

	cout << sin(x) << '\n';
	cout << sin(y) << '\n';
  double w = 0.0 / 0.0;
}
	
