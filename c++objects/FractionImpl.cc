#include "Fraction.hh"

Fraction::Fraction(int n, int d)
	: num(n), den(d)
{}

ostream& operator <<(ostream& s, const Fraction& f)
{
	return s << f.num << '/' << f.den;
}
