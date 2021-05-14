#pragma once

class Complex {
public:
	double r,i;
	Complex(double r, double i) : r(r), i(i) {}

	friend Complex operator +(const Complex& a, const Complex& b);
	friend Complex operator -(const Complex& a, const Complex& b);
	friend Complex operator *(const Complex& a, const Complex& b);
};
