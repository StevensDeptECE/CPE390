#include <time.h>
#include <iostream>

using namespace std;

extern int down1(int n);
int down2(int n);


int main() {
	const int n = 100000000;
	clock_t t0 = clock();
	down1(n);
	clock_t t1 = clock();
	cout << (t1-t0) * 1e-6 << '\n';
}
