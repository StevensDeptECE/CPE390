#pragma once

#include <iostream>

class Polynomial {
private:
	int n;       // degree of the polynomial
	double* coef;
public:
	Polynomial(double coef_[], int n) : n(n) {
		coef = new double[n];
		for (int i = 0; i <= n; i++)
			coef[i] = coef_[i];
	}
	friend std::ostream& operator <<(std::ostream& s, const Polynomial& p) {
		for (int i = 0; i < p.n; i++)
			s << p.coef[i] << "x^" << p.n-i << " + ";
		return s << p.coef[p.n];
	}
	double eval(double x) const;
};
