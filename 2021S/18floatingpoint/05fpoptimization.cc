#include <iostream>
#include <cmath>
using namespace std;

class Vec3d {
public:
	double x,y,z;
	Vec3d(double x_, double y_, double z_) : x(x_), y(y_), z(z_) {}

	friend Vec3d operator +(const Vec3d& a, const Vec3d& b) {
		return Vec3d(a.x + b.x, a.y + b.y, a.z + b.z);
	}

	double mag() const {
		return sqrt(x*x + y*y + z*z);
	}
	double magsq() const {
		return x*x + y*y + z*z;
	}
};

int main() {
	int secondsPerYear = 365 * 24 * 60 * 60; // 315600000
	// const expressions are pre-evaluated
	double x = M_PI * 2;

	int a[2*5]; // figures out how big a is at compile time

	double b;
	cin >> b;

	// a + b + c != a + (b + c)


	double c = b * 2.0 / 3; // should generate vmul.f64 d0, d1, d2  vdiv.f64...
	// double c = b * (2.0 / 3.0);

	Vec3d pos(2.5, 10.2, -3.1);
	cin >> pos.x >> pos.y >> pos.z;
	Vec3d delta(1, 3, 0);
	pos = pos + delta;
	cout << pos.mag()*pos.mag();
	
	

	

}
