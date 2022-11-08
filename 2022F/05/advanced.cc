#include <iostream>
#include <cmath>
using namespace std;
double f(double x) { return x*x*x; }



struct point {
	double x,y;
};

point polar2rect(double r, double theta) {
	return {r * cos(theta), r * sin(theta)};
}

