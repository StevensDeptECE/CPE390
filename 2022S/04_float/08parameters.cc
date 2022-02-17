#include <iostream>
#include <cmath>

using namespace std;

double hypot(double a, double b) {
	return 0;
}

void rect2polar(double x, double y, double& r2,
								double &theta2) {
	r2 = sqrt(x*x+y*y);
	theta2 = atan2(y,x);

}

int main() {
	double x, y, r, theta;

	cin >> x >> y;
	rect2polar(x, y, r, theta);

	cout << "r=" << r << " theta=" << theta << '\n';
}
