#include "Fraction.hh"

ostream& operator <<(ostream& s, const Fraction& f)
{
	return s << f.num << '/' << f.den;
}
