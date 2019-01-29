#include "calls.hh"

int f01()                            { return 0; }
int f02(int a)                       { return 0; }
int f03(int a, int b)                { return 0; }

uint32_t f11(uint32_t x)             { return 0; }
uint32_t f12(uint32_t x, uint32_t y) { return 0; }
uint64_t f13(uint64_t x)             { return 0; }
uint64_t f14(uint64_t x, uint64_t y) { return 0; }

float f21(float x)                   { return 0; }
double f22(double x)                 { return 0; }
long double f23(long double x)       { return 0; }

int f33(int x)                       { return 0; }

A::A(int x) : x(x) {
	std::cout << "initializing object A\n";
}

void A::f31() const {}
void A::f31b()      {}
int A::f32(int x)   { return 0; }
int A::f34()        { return 0; }

A operator +(const A& left, const A& right) {
	return A(0);
}

