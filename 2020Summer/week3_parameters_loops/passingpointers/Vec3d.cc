#include <iostream>
#include <cstdint>
using namespace std;

class Vec3d {
public:
	double x,y,z, w, v1,v2,v3, v4, v5;
	Vec3d(double x, double y, double z,
				double w, double v1, double v2, double v3, double v4, double v5) :
		x(x), y(y), z(z), v1(v1), v2(v2), v3(v3),v4(v4), v5(v5) {}
	friend Vec3d operator +(Vec3d a, Vec3d b) {
		return Vec3d(a.x+b.x, a.y+b.y, a.z+b.z, a.w+b.w, a.v1+b.v1, a.v2+b.v2, a.v3+b.v3, a.v4+b.v4, a.v5+b.v5);
	}
	friend Vec3d& operator +=(Vec3d& a, const Vec3d& b) {
		a.x+=b.x, a.y+=b.y, a.z+=b.z, a.v1 += b.v1, a.v2+= b.v2, a.v3 += b.v3, a.v4 += b.v4, a.v5+b.v5;
		return a;
	}
	friend ostream& operator<<(ostream& s, const Vec3d& v) {
		return s << v.x << "," << v.y << "," << v.z;
	}
};

int main() {
	Vec3d a(0,0,0,0,0,0,0,0,0);
	Vec3d b(0,0,1,0,0,0,0,0,0);
	const uint32_t n = 1000000000;
	clock_t t0 = clock();
	for (int i = 0; i < n; i++)
		a = a + b;
	clock_t t1 = clock();
	cout << "Elapsed: " << (t1-t0) << '\n';

	t0 = clock();
	for (int i = 0; i < n; i++)
		a += b;
	t1 = clock();
	cout << "Elapsed: " << (t1-t0) << '\n';

	cout << a << '\n';	
}
