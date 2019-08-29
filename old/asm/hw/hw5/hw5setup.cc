#include "Vec3d.hh"
#include <cmath>
using namespace std;

double Vec3d::magSq() const {
	return x*x + y*y + z*z;
}

double Vec3d::mag() const {
	return sqrt(magSq());
}
