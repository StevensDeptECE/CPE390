#include <iostream>
using namespace std;

class Vec3d {
public:
	double x,y,z;
	Vec3d(double x, double y, double z) : x(x), y(y), z(z) {}
#if 0
	// java way
	Vec3d(double x, double y, double z) {
		this->x = x;
		this->y = y;
		this->z = z;
	}
#endif
	Vec3d(double x, double y) : x(x), y(y), z(0.0) {}
	Vec3d() { x = 0; y = 0; z = 0; }

	
};

int main() {
	Vec3d v1(1.0, 2.5, -3.1);
	Vec3d v2(2.3, 1.5); // z = 0
	Vec3d v3; // x = y = z = 0
	// not an object	Vec3d v4();

}
