#include <iostream>
using namespace std;

float sum(const float* a, uint32_t len) {
	float sum = a[0];
	for ( ; len > 0; len--, a++)
		sum += *a; // [r0!]
	return sum;
}

double sum(const double* a, uint32_t len) {
	double sum = a[0];
	for ( ; len > 0; len--, a++)
		sum += *a; // [r0!]
	return sum;
}


int main() {
	float a[] = {1.5f, 2.5f, 3, 4.92815};
	cout << sum(a, 4);

	double b[] = {1.5, 2.5, 3, 4.92815};
	cout << sum(b, 4);
}
