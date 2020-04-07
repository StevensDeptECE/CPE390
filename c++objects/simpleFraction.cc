#include <iostream>
using namespace std;

class Fraction {
private:
  int num, den; // this is what we need to remember (the state)
public:
  // constructor
  Fraction(int n, int d) : num(n), den(d) {}
	friend ostream& operator <<(ostream& s, Fraction f) {
    return s << f.num << '/' << f.den;
  }
};

int main() {
	Fraction a(1,2); //  1/2
	cout << a << endl;
	Fraction b(1,3); //  1/3
	//	Fraction c = a + b;
  return 0;
}
