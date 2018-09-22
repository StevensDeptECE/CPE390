#include "Polynomial.hh"

double Polynomial::eval(double x) const {
	double s = coef[0];
	for (int i = 1; i <= n; ++i)
		s = s * x + coef[i];
	return s;
}

