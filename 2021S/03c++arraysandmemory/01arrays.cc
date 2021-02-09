
#include <iostream>
#include <iomanip>
using namespace std;

/*
	An array is a contiguous block of memory containing multiple values 
	all of the same type indexed by position
 */

void add(double x[], int size, double v) {
  for (int i = 0; i < size; i++)
		x[i] += v;
}


int main() {
	//uninitialized variables: not a good idea
	int x; // sizeof(int) == 4
	int y[10]; // y[0], y[1], y[2], y[3] ... y[9] sizeof(y) == 40
	double z[5];
	//char c[80]; // sizeof(c) == 80
	//	uint64_t d[20]; // 20*8 = 160

	//	int z[3][4]; // 3*4*sizeof(int) = 3*4*4 = 48 bytes
	//	double w[2][2][2][2][2]; // 2*2*2*2*2*sizeof(double) = 32*8 = 256 bytes
	//	double q[5]; // 5 * 8 = 40 bytes
	cout << x << '\n'; // what is the value of x???

	for (int i = 0; i < 10; i++)
		cout << y[i] << ' ';
	cout << '\n';

	for (int i = 0; i < 5; i++)
		cout << z[i] << ' ';
	cout << '\n';


	uint64_t a[10] = {5, 2, 312412459219458}; // all remaining elements initialized to zero
	double b[10] = {0};
	for (int i = 0; i < 10; i++)
		cout << a[i] << ' ';
	cout << '\n';

	b[1] = 1.5;
	cout << setprecision(5);
	for (int i = 0; i < 10; i++)
		cout << b[i] << ' ';
	cout << '\n';
	add(b, 10, 2.3);
	for (int i = 0; i < 10; i++)
		cout << b[i] << ' ';
	cout << '\n';
	double c[4] = {9.5, 1.2, 3.3, 11.6};
	add(c, 4, -1.6);
	cout << c << '\n';
}
