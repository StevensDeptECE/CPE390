#pragma once
#include <iostream>
using namespace std;

class Fraction {
private:
  int num, den;
public:
	Fraction(int n, int d);
	void zero();
	friend ostream& operator <<(ostream& s, const Fraction& f);
};
