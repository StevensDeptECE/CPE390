#include "Fraction.hh"
using namespace std;

int main() {
	Fraction a(1,2); // num=1 den = 2
	Fraction b(1,3); // num = 1 den = 3
	Fraction c = a + b;  //operator +(a,b)
	cout << "c=" << c << '\n';
	Fraction d = a.add(b); // call a method
	Fraction e = add(a,b);

	int n = e.getNum();
}
	

