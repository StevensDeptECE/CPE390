#include <iostream>
#include <cmath>
using namespace std;

class vec3d {
public:
  double x, y, z;
  vec3d(double x, double y, double z) : x(x), y(y), z(z) {}
  friend double dist(const vec3d& a, const vec3d& b) {
    double dx = b.x - a.x, dy = b.y - a.y, dz = b.z - a.z;
    return sqrt(dx *dx + dy*dy + dz*dz);
  } 
  friend double distsq(const vec3d& a, const vec3d& b) {
    double dx = b.x - a.x, dy = b.y - a.y, dz = b.z - a.z;
    return dx *dx + dy*dy + dz*dz;
  } 
};

constexpr double G = 6.67e-11;
double gravForce(double m1, vec3d v1, double m2, vec3d v2) {
    return G*m1*m2 / (dist(v1, v2)*dist(v1, v2));
}

double accel(double m1, vec3d v1, double m2, vec3d v2) {
    return gravForce(m1, v1, m2, v2) / m1;
}


double gravAccel(vec3d v1, double m2, vec3d v2) {
    return G*m2 / distsq(v1, v2);
}
constexpr double c1 = 1.251;
constexpr double c2 = -911.251;

double f(double x) {
  return x * (c1*c2);
}



