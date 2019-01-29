#include <iostream>
#include "calls.hh"

using namespace std;

void testintegers() {
	cout << f01() << '\n';
	cout << f02(1) << '\n';
	cout << f03(1,2) << '\n';
}

void testuints() {
	uint32_t a = 1;
	uint64_t b = 2;
	cout << f11(a) << '\n';
	cout << f12(a,a) << '\n';
	cout << f13(b) << '\n';
	cout << f14(b,b) << '\n';
}

void testfloat() {
	const float a = 1.5f;
	const double b = 2.5;
	const long double c = 1.00000000000000000001L;
	cout << f21(a) << '\n';
	cout << f22(b) << '\n';
	cout << f23(c) << '\n';
}

void testMethods() {
	A a1(3);                   // call the constructor
	a1.f31();                  // call method with no parameters, returning nothing
	a1.f31b();                 // call method with no parameters, returning nothing
	cout << a1.f32(3) << '\n'; // call method with one int parameter
	cout << f33(3) << '\n';    // call a friend function (should be same as regular?)
	cout << A::f34() << '\n';  // call a static function (different mangled name)
}


int main() {
	testintegers();
	testuints();
	testfloat();
	testMethods();
}
