#include <iostream>
#include <cmath>

using namespace std;

int add(int a, int b) {
	return a + b;
}


/*
	advantages of functions
	1. don't rewrite code (faster? less maintenance)
	if you copy code n times, then fix one
	2. one monumental program is VERY HARD to debug

*/

//double hypot(double a, double b);

void rect2polar(double x, double y, double& r, double& theta) {
  r = sqrt(x*x + y*y);
	theta = atan2(y, x);
	x = 99;
}

void polar2rect( double r, double theta, double& x, double& y) {
}

double factorial(int n) { // n! = n * (n-1) * (n-2) * ...1
	double prod = 1;
	for (int i  = n; i > 1; i--) { 
    prod = prod * i;// 1*5   5*4    20*3   60*2
	}
	return prod;
}

// n! recursive definition
double fact(int n) {
	// fact(5) = 5*fact(4)   fact(4)=4*fact(3)
	// fact(3) = 3*fact(2)   fact(2) = 2*fact(1)
	// fact(1) = 1 * fact(0) fact(0) = 0*fact(-1) ....
  if (n <= 1) // need a termination condition
		return 1;
	
	return n * fact(n-1); // recursive rule that calls yourself
}

// count(n) = n
int count(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum ++;
	return sum;
}

int count2(int n) {
	int a[100];
	if (n == 0 )
		return 0;

  return 1 + count2(n-1);
}



int main() {
	/// write 10,000 lines in main
	cout << add(2,3) << '\n'; // can be optimized, inlined
	//	cout << hypot(3,4) << '\n'; // cannot be optimized, compiler does not know
  double x, y, r, theta;
	cin >> x >> y;
	rect2polar(x,y,r,theta);

	cout << "r=" << r << " theta=" << theta << '\n';
	cout << factorial(13) << '\n';
	cout << factorial(100) << '\n';
	cout << fact(100) << '\n';
	cout << fact(150) << '\n';
	cout << fact(200) << '\n';
	cout << fact(1000) << '\n';
	cout << count(1000) << '\n';
	cout << count2(1000) << '\n';
	cout << count2(1000000) << '\n';
}
