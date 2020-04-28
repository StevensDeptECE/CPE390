#include <iostream>
#include <time.h>
#include "benchmarks.hh"
using namespace std;

typedef void (*FuncOneIntParam)(int p);
typedef void (*FuncWArrayAndIntParam)(int x[], int p);

void benchmark(const char msg[], FuncOneIntParam f, int n) {
	clock_t t0 = clock();
	f(n);
	clock_t t1 = clock();
	cout << msg << '\t' << (t1-t0) << '\n';
}

void benchmark(const char msg[], FuncWArrayAndIntParam f, int n) {
	int* p = new int[n];
	for (int i = 0; i < n; i++) {
		p[i] = i;
	}
	clock_t t0 = clock();
	for (int i = 0; i < 10; i++)
		f(p, n);
	clock_t t1 = clock();
	cout << msg << '\t' << (t1-t0) << '\n';
	delete [] p;
}

int main() {
#if 0
	const int n = 1000000000;
	benchmark("mul3     ", mul3, n); // even bigger number
	benchmark("countdown", count, n);
	benchmark("count up ", count2, n);
	benchmark("add      ", add, n);
	benchmark("sub      ", sub, n);
	benchmark("mul      ", mul, n);
	benchmark("mul2     ", mul2, n); // bigger number
	benchmark("mul3     ", mul3, n); // even bigger number
#endif
	
	const int n2 = 10000000;
	benchmark("sumarray     ", sumarray, n2); // even bigger number
	benchmark("sumarray2    ", sumarray2, n2); // even bigger number
}
