#include <iostream>

using namespace std;

class fraction {
private:
  int num, den;
public:
  fraction(int n = 0, int d = 1) : num(n), den(d) {
	}
	friend fraction add(fraction a, fraction b);

	// the method f1.add(f2)
  fraction add(fraction right) const {
		//    lefthand side is called this
    return fraction(this->num*right.den + right.num*den, den*right.den);		
	}
	friend fraction operator +(fraction a, fraction b);
	void print() const { // readonly method, does not change the object
		cout << num << "/" << den;
	}
	friend ostream& operator <<(ostream& s, fraction f) {
		return s << f.num << "/" << f.den;
	}
};

//  a.b  sizeof( )   ? :   ::
/*
	1     1     3+2
 --- + --- = ---
  2     3     6


1/2 + 1/2 = 2/4
 */

fraction add(fraction a, fraction b) {
	fraction result(a.num*b.den + b.num*a.den, a.den*b.den );

	return result;
}
fraction operator +(fraction a, fraction b) {
  return fraction(a.num*b.den + b.num*a.den, a.den*b.den);
}
/*
	class
	object
	message
	method
 */

int main() {
	const fraction f1(1,2); // 1/2
	fraction f2(1,3); // 1/3
	fraction f3 = add(f1,f2);
	fraction f4 = f1.add(f2);
	fraction f5 = f1 + f2;
	fraction f6(3); //3/1
	//	fraction f7(); // this is a function f7 that reutrns objects of type fraction
	fraction f8; // 0/1
	f1.print();
	cout << '\n';
	cout << 5 << " yo \n" << f1 << '\n';

						 
}
