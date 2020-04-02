#include "Fraction.hh"
/*
	den     <----- sp + 12
  this->num     <----- sp + 8
	
        den     <----- sp + 4
        num     <----- sp + 0
 */
void g() {
	int y;
	cout << "hi!";
}

void f() {
	int x;
	g();
}
Fraction test(1,2);

int main() {
	//	f();
  Fraction a(1,2); // 1/2
	cout << a << endl;
	a.zero();
	cout << a << endl; // 0/1
	Fraction b(1,3); // 1/3
	//Fraction c = a + b; // 5/6
}
