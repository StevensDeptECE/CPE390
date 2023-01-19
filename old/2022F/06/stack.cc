#include <iostream>
using namespace std;

void add_one(uint64_t x[]);
void copy(uint64_t a[], uint32_t len);
//void f(uint64_t x[4][3]);

int main() {
	int x; // uninitialized random bits
	uint64_t a[10]; // same
	//	uint64_t b[4][3];
	copy(a, 5);
	//f(b);
}
