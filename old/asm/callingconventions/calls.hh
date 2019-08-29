#pragma once

int f01();
int f02(int a);
int f03(int a, int b);

uint32_t f11(uint32_t x);
uint32_t f12(uint32_t x, uint32_t y);
uint64_t f13(uint64_t x);
uint64_t f14(uint64_t x, uint64_t y);

float f21(float x);
double f22(double x);
long double f23(long double x);

int f33(int x);

class A {
private:
	int x;
	static int count;
public:
	A(int x);
	void f31() const; // a readonly method
	void f31b();      // a method that can change the object
	int f32(int x);
	friend int f33(int x);
	static int f34();
	friend A operator +(const A& left, const A& right);
};
