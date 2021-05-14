#include <iostream>
#include <cmath>
using namespace std;

double f1(double x) {
	return x*x;
}

double f2(double x) {
	return x+x;
}

double f3(double x) {
	return x-x;
}

double f4(double x, double y) {
	return x/y;
}

double f5(double x) {
	return -x;
}

double f6(double x) {
	return sqrt(x);
}

double f7(double x) {
	return sin(x);
}

int main() {
	double a,b;
	cin >> a >> b;
	cout << f1(a) << '\n';
}
