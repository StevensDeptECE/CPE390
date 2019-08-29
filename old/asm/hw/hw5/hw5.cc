#include <iostream>
using namespace std;
#include "Vec3d.hh"

int main() {
	Vec3d a(1,2,3);
	cout << a.magSq() << '\n';
	cout << a.mag() << '\n';
}
