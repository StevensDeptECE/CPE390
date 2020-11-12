#include <iostream>
using namespace std;

class Vec3d {
public:
	double x,y,z;
	Vec3d(double x = 0, double y = 0, double z = 0) : x(x), y(y), z(z) {}

	friend Vec3d operator +(const Vec3d& a, const Vec3d& b) {
	  return Vec3d(a.x + b.x, a.y + b.y, a.z + b.z);
	}

	friend Vec3d operator -(Vec3d a, Vec3d b) { // this is pass by value. Possibly a bit slow
		return Vec3d(a.x - b.x, a.y - b.y, a.z - b.z);
	}

	friend Vec3d operator -(Vec3d a) {
		return Vec3d(-a.x, -a.y, -a.z);
	}

  friend double dot(const Vec3d& a, const Vec3d& b) {
		return a.x*b.x + a.y*b.y + a.z*b.z;
	}

};

int main() {
	Vec3d v1(1.0, 2.5, -3.1);
	Vec3d v2(2.3, 1.5); // z = 0
	Vec3d v3; // x = y = z = 0
	Vec3d v4(2.9); // x = 2.9, y = 0, z = 0

	Vec3d v5 = v1 + v2;

}
