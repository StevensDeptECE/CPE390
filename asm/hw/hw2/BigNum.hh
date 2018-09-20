#pragma once

#include <iostream>

class BigNum {
private:
	// 1234
	uint32_t a, b, c, d; // a is the high order part
	BigNum() {}
public:
	BigNum(uint32_t v) : a(0), b(0), c(0), d(v) {}
	
	friend BigNum add128(const BigNum& left, const BigNum& right);
	friend BigNum operator +(const BigNum& left, const BigNum& right);

	friend std::ostream& operator <<(std::ostream& s, const BigNum& big) {
		return s << big.a << "," << big.b << "," << big.c << "," << big.d;
	}
};
