#include <iostream>
#include <cmath>
using namespace std;

double fp01(double x) {
	return x*2;
}

double fp02(double x, double y) {
	return sqrt(x*x + y*y);
}

double mean(double x[], int n) {
	double sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i];
	return sum / n;
}

void stats(double x[], int n, double& mean, double& var, double& min, double& max) {
	double sum = x[0];
	min = x[0];
	max = x[0];
	for (int i = 1; i < n; i++) {
		sum += x[i];
		if (x[0] < min)
			min = x[0];
		else if (x[0] > max)
			max = x[0];
	}
	mean = sum / n;
	double sum2 = 0;
	for (int i = 0; i < n; i++) {
		sum2 += (x[i] - mean)*(x[i] - mean);
	}
	var = sum2 / n;
}

const double G = 6.67e-11;
double gravityForce
(double x1, double y1, double m1, double x2, double y2, double m2) {
	double dx = x2 - x1, dy = y2 - y1;
	const double r12sq = dx*dx + dy*dy;
	return G * m1*m2 / r12sq;
}

const double power(double x, int n) {
	double prod = 1;
	while (n > 0) {
		if (n & 1)
			prod *= x;
		x *= x;
		n >>= 1;
	}
	return prod;
}

/**
	 power algorithm
	 matrix mult
	 gravitation vectors

 */
int main() {
	cout << fp01(2.0) << '\n';
	cout << fp02(3.0, 4.0) << '\n';

	double v[] = { 70, 80, 90, 100};
	cout << mean(v, 4) << '\n';

	cout << power(2.0, 17) << '\n';
	
	double m, var, min, max;
	stats(v, 4, m, var, min, max);
	cout << "mean=\t" << m << '\n';
	cout << "var=\t" << v << '\n';
	cout << "min=\t" << min << '\n';
	cout << "max=\t" << max << '\n';

	double massEarth = 6.2e24;
	double xEarth = 0, yEarth = 0;

	double massMoon = 6.96e+23;
	double r = 3.0e8; // distance 3m meters, or about the distance from earth to mars
	double a = 45*M_PI/180;
	double xMoon = r* cos(a), yMoon = r*sin(a);
	cout << gravityForce(xEarth,yEarth,massEarth, xMoon,yMoon,massMoon) << "\n";

}
