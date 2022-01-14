#include <iostream>
using namespace std;

struct Point {
	double x, y;
};

double area(Point a, Point b, Point c);

void rect2polar(double x, double y, double& r, double& theta) {
  r = sqrt(x*x + y*y);
	theta = atan2(y, x); //arctan(y/x)
}

int main() {
	double x, y;
	cin >> x >> y;
	double r, theta;

	rect2polar(x, y, r, theta);
	cout << r << ' ' << theta << '\n';
}
