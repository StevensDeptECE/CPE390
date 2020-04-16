#include <iostream>
using namespace std;

// 32 bit integer math
int f(int a, int b) {
	int t1 = a + b;
	int t2 = a - b;
	int t3 = (t1 * t2) + (t1 / t2) + (t1 % t2);
	int t4 = t3 & 0xFFAA5533;
	int t5 = t2 | 0x23429128;
	int t6 = t4 ^ t5;
	return t6;
}

// 64 bit integer math
uint64_t f(uint64_t a, uint64_t b) {
	uint64_t t1 = a + b;
	uint64_t t2 = a - b;
	uint64_t t3 = (t1 * t2) + (t1 / t2) + (t1 % t2);
	uint64_t t4 = t3 & 0xFFAA5533;
	uint64_t t5 = t2 | 0x23429128;
	uint64_t t6 = t4 ^ t5;
	return t6;
}

int ifStatements(int x) {
	int t1 = 0;
	if (x < 0)
		t1 = 1;
	if (x > 5)
		t1 = -t1;
	else
		t1 = ~t1;
	return t1;
}

void loops(int x) {
	for (int i = 0; i < x; i++)
		cout << i;
	for (int i = x; i > 0; i--)
		cout << i;
	while (x > 0) {
		cout << x;
		x /= 2;
	}		
}

