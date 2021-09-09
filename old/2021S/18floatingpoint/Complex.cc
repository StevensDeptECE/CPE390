#include "Complex.hh"

Complex operator +(const Complex& a, const Complex& b) {
	return Complex(a.r + b.r, a.i + b.i);
}

#if 0
//next time... pass by value
Complex operator +(Complex a, Complex b) {
	return Complex(a.r + b.r, a.i + b.i);
}
#endif
