#pragma once
#include <iostream>

class Fraction {
private:
	int num, den;
public:
	// constructor with initializer list
	Fraction(int n, int d) : num(n), den(d) {	}

	// this is a method (member function)
	// this is called with a.add(b) and returns a fraction
	Fraction add(Fraction b) const { // <-- const here means readonly
		// (this method does not change the object it is called on
    return Fraction(this->num*b.den + this->den*b.num,this->den*b.den);
		// calling a constructor creates an unnamed temp
		// it goes away by the ; but if you return it, that's the answer
	}

  // same code as above but as an operator
	// called with c = a + b
	friend Fraction operator +(const Fraction& a, const Fraction& b) {
    return Fraction(a.num*b.den + a.den*b.num,a.den*b.den);
	}		

	// this is a friend function
	// add(a,b)
	friend Fraction add(const Fraction& a, const Fraction& b) {
    return Fraction(a.num*b.den + a.den*b.num,a.den*b.den);
	}
	
	// return the numerator of the fraction
	int getNum() const { return num; }

	int getDen() const { return den; }

	// this implements cout << f and prints out 1/2, 1/3 etc
	friend std::ostream& operator <<(std::ostream& s, const Fraction& f) {
		return s << f.num << "/" << f.den; // 1/2
	}
};
