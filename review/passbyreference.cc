#include <iostream>
#include <cmath>
using namespace std;

void rect2polar(double x, double y, double& r, double& theta) {
  r = sqrt(x*x+y*y);
	theta = atan2(y, x);
}

void polar2rect(double r, double theta, double& x, double& y) {
  x = r*cos(theta);
	y = r*sin(theta);
}

double f(int x, double& ans) {

  ans = 19.6;
	return 17.2;
}

void print(double a[], int len) {
	for (int i = 0; i < len; i++)
		cout << a[i] << ' ';
}

void stats(double a[], int len, double &mean, double& min, double& max ) {
  double sum = 0;  														 
  for (int i = 0; i < len; i++)
		sum += a[i];
	mean = sum/len;
	min = a[0]; // so far 10
	max = a[0]; // so far 10
	for (int i = 1; i < len; i++)
		if (a[i] < min )
			min = a[i];
		else if (a[i] > max)
			max = a[i];
}


void statsexample() {
	double x[] = {10, 20, 30, 40}; 
	print(x, 4);
	double mean, min, max;
  stats(x, sizeof(x)/sizeof(double), mean, min, max);
	cout << "mean=" << mean << " " << min << " " << max << endl;

	double x2[] = {1, 2, 3, 10, 20, 30, 40};
	print(x2, 7);	
  stats(x, sizeof(x)/sizeof(double), mean, min, max);

	//	mean = sum/n
	//var = sum (x[i] - mean)**2 / n
	stats2(x, 4, mean, var);
}

int sum(int a, int b) {
	int s = 0;
  for (int i = a; i <= b; i++)
		s += i;
	return s;
}

int prod(int a, int b) {
	int p = 1;
  for (int i = a; i <= b; i++)
		p *= i;
	return p;
}


int main() {
	double x = 3.0, y = 4.0, hypot, angle;
	rect2polar(x,y,hypot, angle);
	cout << "r==" << hypot << " angle=" << angle << '\n';
	
	hypot = 3;
	angle = 0.25;
	polar2rect(hypot, angle, x, y);
	cout << "x=" << x << " y=" << y << '\n';
	statsexample();
}
