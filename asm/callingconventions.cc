#include <iostream>
using namespace std;
int f01() { return 0; }
int f02(int a) { return a; }
int f03(int a, int b) { return a + b; }

uint32_t f11(uint32_t x) { return x; }
uint32_t f12(uint32_t x, uint32_t y) { return x+y; }
uint64_t f11(uint64_t x) { return x; }
uint64_t f12(uint64_t x, uint64_t y) { return x+y; }

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

float f21(float x) { return x; }
double f22(double x) { return x; }
long double f22(long double x) { return x; }

void testfloat() {
	const float a = 1.5f;
	const double b = 2.5;
	const long double c = 1.00000000000000000001L;
	cout << f21(a) << '\n';
	cout << f22(b) << '\n';
	cout << f23(c) << '\n';
}

class A {
public:
	A();
	void f31();
	int f32(int x);
	friend int f33(int x);
	static int f34(int x);
};

void testMethods() {
	A a1;
	a1.f31(); // call method with no parameters, returning nothing
	cout << a1.f32(3) << '\n';

}


int main() {
	testintegers();
	testuints();
	testfloat();
	testMethods();
	testFriends();
	
}
