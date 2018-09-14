#include <iostream>
using namespace std;

class BigNum {
private:
	// 1234
	uint32_t a, b, c, d; // a is the high order part
	BigNum() {}
public:
	BigNum(uint32_t v) : a(0), b(0), c(0), d(v) {

	}
	
	friend BigNum operator + (const BigNum& left, const BigNum& right);
	// this is wrong, WHERE IS THE RIGHT CODE?
	friend ostream& operator<<(ostream& s, const BigNum& big) {
		return s << big.a << "," << big.b << "," << big.c << "," << big.d;
	}
};

// LDR  R2, (R0) 
// LDR  R2, (R0, 4)

//LDR  R2, (R0, 12)
//                   R0            R1
BigNum operator + (const BigNum& left, const BigNum& right) {
  BigNum ans;
0	ans.d = left.d + right.d; // look up how to do carry ARM   ADD WITH CARRY ADC
	ans.c = left.c + right.c;// + carry;
	ans.b = left.b + right.b;// + carry;
	ans.a = left.a + right.a;// + carry;
	return ans;
}

int main() {
	BigNum b1(3); // 0 0 0 3
	BigNum b2(5); // 0 0 0 5
	Bignum b3 = b1 + b2;
	cout << b3 << '\n'; // print out the answer!!
}
