#include <cmath>

int mean(int[] x, int n) {
	int sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i];
	return sum / n;
}

double hypot(double a, double b) {
	return sqrt(a*a + b*b);
}

double quadratic(double a, double b, double c, double x) {
	return (a * x + b) * x + c;
}

int reverse(int x) {
	x << 24 | x >> 24
