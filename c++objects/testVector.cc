#include <iostream>
using namespace std;

#include "Vector.hh"
Vector f(Vector a, Vector b) {
	Vector c = a + b;
}

int main() {
	Vector v0(1,2); // v0.x = 1.0 v0.y = 2.0 v0.z = 0
	Vector v1(1,2,3);
	Vector v2(1.5,2.1,3.2);
	Vector v3 = v1 + v2;
	cout << v3;
}
