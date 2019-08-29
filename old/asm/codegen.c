#include <stdio.h>
int f() {
	return 2 + 3 * 4;
}

int sum(int n) {
	int s = 0;
	for (int i = 1; i <= n; i++)
		s += i;
	return s;
}

double max(double a, double b) {
	if (a > b)
		return a;
	else
		return b;
}

int sumlist(int x[], int n) {
	int sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i];
	return sum;
}

double covariance(double x[], double y[], int n) {
	double sumx = 0, sumy = 0, sumxy = 0, sumx2 = 0, sumy2 = 0;
	for (int i = 0; i < n; i++) {
		sumx += x[i];
		sumx2 += x[i]*x[i];
		sumy += y[i];
		sumy2 += y[i]*y[i];
	}
	return sumxy /n - sumx * sumy / (n*n);
}

int h(int a, int b) {
	return a + b;
}

int main() {
	f();
	printf("%d", sum(10));
	int list[] = { 5, 3, 7, 4, 1};
	printf("%d", sumlist(list, 5));
	double a,b;
	scanf("%lf", a, b);
	printf("%lf", max(a,b));
	printf("%lf", h(a, b));
}
