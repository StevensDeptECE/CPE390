#include <cstdint>
#include <iostream>
using namespace std;
#include "calls.hh"

int f01() { return 0; }
int f02(int a) { return a; }
int f03(int a, int b) { return a + b; }

uint32_t f11(uint32_t x) { return x; }
uint32_t f12(uint32_t x, uint32_t y) { return x+y; }
uint64_t f13(uint64_t x) { return x; }
uint64_t f14(uint64_t x, uint64_t y) { return x+y; }

float f21(float x) { return x; }
double f22(double x) { return x; }
long double f23(long double x) { return x; }

// inside the class A is a static (shared) variable
// all objects of type A share this variable
int A::count = 0;

A::A(int x) : x(x) {
	cout << "in the constructor!";
	count++;
}
void A::f31() const {
	cout << x;
}

void A::f31b() {
	x++;
}

// copy an external value into the private x
int A::f32(int x) {
	this->x = x;
}

// this may be a friend so it may access the class, but it's just a regular function
int f33(int x) {
	return x+1;
}

int A::f34() {
  return count;
}

A operator +(const A& left, const A& right) {
	return A(left.x + right.x);
}

