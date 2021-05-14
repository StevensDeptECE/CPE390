#include <iostream>
using namespace std;

class Complex {
public:
	double r,i;
	Complex(double r, double i) : r(r), i(i) {}
	friend ostream& operator <<(ostream& s, Complex c) {
		return s << "(" << c.r << ", " << c.i << ")";
	}

  friend Complex operator +(Complex a, Complex b);
  friend Complex operator -(Complex a, Complex b);
  friend Complex operator *(Complex a, Complex b);
};

int main() {
  Complex a(2.5, -1.0);
  Complex b(1.1, 1.3);
  Complex c = a + b;
  cout << c << '\n';
  Complex d = a - b;
  cout << d << '\n';
  Complex e = a * b;
  cout << e << '\n';
}

