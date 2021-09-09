#include <iostream>
using namespace std;

int f1(int a, int b) {
	return a << b; // shift a left by b bits  (signed)
}

int f1b(int a, int b) {
	return a >> b; // shift a right by b bits  (signed)
}

uint32_t f2(uint32_t a, uint32_t b) {
	return a << b; // shift a left by b bits (unsigned)
}

uint32_t f3(uint32_t a, uint32_t b) {
	return a >> b; // right shift (unsigned)
}

uint32_t f4(uint32_t a) {
	return a * 64; // compiler will generate lsl #6
}

uint32_t f5(uint32_t a) {
	return a * 5; // on intel compiler will generate lea  (%rdx, 4*%rdx)
}

uint32_t f6(uint32_t a) {
	return a / 8; // compiler will generate lsr  #3
}

uint32_t f7(uint32_t a, uint32_t b) {
	return a / b;
}

uint32_t f8(uint32_t a, uint32_t b) {
	return a / 10;
}

uint32_t f9(uint32_t a, uint32_t b) {
	return a & b; // ampersand (and)
}

uint32_t f10(uint32_t a, uint32_t b) {
	return a | b; // vertical bar or "pipe" in linux
}

uint32_t f11(uint32_t a, uint32_t b) {
	return a ^ b; // caret (XOR)
}

uint32_t f12(uint32_t a) {
	return ~a; // tilde NOT
}

int main() {
	int a,b;
	cin >> a >> b;
	cout << f7(a, b) << '\n';
}
