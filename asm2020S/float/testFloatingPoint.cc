#include <iostream>
#include <cmath>
using namespace std;

double f1(double x, double y) {
	return sqrt(x*x + y*y);
}

double f2(double x, double y) {
	double t1 = sin(x) + cos(x) + tan(x);
	double t2 = atan(t1) / 3.0 + atan2(y,x);
	double t3 = 2 * t2 / 3;
	return t3 * (2.0 / 3.0);
}


float f3(float x, float y) {
	return sqrt(x*x + y*y);
}

float f4(float x, float y) {
	float t1 = sin(x) + cos(x) + tan(x);
	float t2 = atan(t1) / 3.0 + atan2(y,x);
	float t3 = 2 * t2 / 3;
	return t3 * (2.0f / 3.0f);
}

