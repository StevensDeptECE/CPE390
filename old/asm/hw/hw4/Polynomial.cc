#include "Polynomial.hh"
using namespace std;

double Polynomial::eval(double x) const {
	double p = coef[0];
	for (int i = 1; i <= n; i++)
		p = p * x + coef[i];
	return p;
}

