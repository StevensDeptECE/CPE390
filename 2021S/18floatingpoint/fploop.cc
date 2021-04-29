#include <iostream>
using namespace std;
double sumsq(double a[], int len);
double mean(double a[], int len);
double sumcube(double a[], int len);

/*
	d0   =   s0 s1
  d1   =   s2 s3
  d2   =   s4 s5
  ...



  d15



 */

int main() {
	double x[] = {2.0, 3.0, 2.5};
	cout << sumsq(x, 3) << '\n';

	cout << mean(x, 3);
	cout << sumcube(x, 3);
}
