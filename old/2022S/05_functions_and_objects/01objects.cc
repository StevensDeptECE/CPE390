#include <iostream>
using namespace std;


// 1/2  3/4   5/3
class Fraction {
private:
  int num, den;
public:
  Fraction( ) : num(0), den(1) {} // initialer list syntax

#if 0
	Fraction() {
		num = 0;
		den = 1;
	}
#endif
	Fraction(int n, int d) : num(n), den(d) {	}

	// this is a method or C++ member function
  void print() {
		cout << num << "/" << den;
	}
	
};

int main() {
  Fraction a;	 // take 8x bytes on the stack
	a.print(); // print(&a)
  Fraction b(1,3);
	b.print();  // print(&b)
}




