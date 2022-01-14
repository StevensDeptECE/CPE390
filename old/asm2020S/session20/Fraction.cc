#include <iostream>
using namespace std;

class Fraction {
private:
	int num, den;
public:
	Fraction(int n, int d) : num(n), den(d) {}
	friend ostream& operator<<(ostream& s, const Fraction& f) {
		return s << f.num << '/' << f.den;
	}
};

Fraction add(Fraction a, Fraction b);

int main() {
	Fraction a(1,2);
  Fraction b(1,3);
	Fraction c = add(a,b);  // 1*3+2*1
	cout << c << '\n';
}
