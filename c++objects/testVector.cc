#include <iostream>
using namespace std;

#include "Vector.hh"

int main() {
	Vector v1(1,2,3);
	Vector v2(1.5,2.1,3.2);
	Vector v3 = v1 + v2;
	cout << v3;
}
