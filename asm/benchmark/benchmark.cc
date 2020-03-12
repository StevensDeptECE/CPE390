#include <iostream>
using namespace std;

extern void countup(uint32_t n);
extern void countdown(uint32_t n);
extern void multiply(uint32_t n);

void visit(int x[], int32_t n);
void readwrite(int x[], int32_t n);
void read1(int x[], int32_t n);
void readskip(int x[], int32_t n);

typedef void (*BenchFunc)(uint32_t);
void benchmark(const char msg[], BenchFunc b, uint32_t n) {
	clock_t t0 = clock();
	b(n);
	clock_t t1 = clock();
	cout << msg << "\t" << t1 - t0 << '\n';
}

typedef void (*BenchFunc2)(int x[], int32_t n);
void benchmark2(const char msg[], BenchFunc2 b, int x[], uint32_t n) {
	clock_t t0 = clock();
	b(x, n);
	clock_t t1 = clock();
	cout << msg << "\t" << t1 - t0 << '\n';
}

int main() {
	const uint32_t n = 1024*1024 * 16;
  benchmark("count up", countup, n);
  benchmark("count down", countdown, n);
	benchmark("multiply", multiply, n);

	//	int a[size];
	int* p = new int[n];
	benchmark2("visit", visit, p, n);
	benchmark2("readwrite", readwrite, p, n);
	benchmark2("read1", read1, p, n);
	benchmark2("readskip", readskip, p, n);
	delete [] p;
}
