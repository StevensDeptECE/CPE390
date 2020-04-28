#include <iostream>
#include <unistd.h>
using namespace std;
int isumsq(int x[], int n) {
	int sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i]*x[i];
	return sum;
}

double sumsq(double x[], int n) {
	double sum = 0;
	for (int i = 0; i < n; i++)
		sum += x[i]*x[i];
	return sum;
}


template<typename Val>
Val* generate(uint32_t n, Val v) {
	Val* p = new Val[n];
	for (int i = 0; i < n; i++)
		p[i] = v;
	return p;
}

template<typename Func, typename Val>
void benchmark(const char msg[], Func f, Val* p, uint32_t n) {
	cout << msg << ":\t" << flush;
	clock_t t0 = clock();
	Val v = f(p, n);
	clock_t t1 = clock();
	cout << v << '\t' << (t1-t0) << '\n';
}

int main() {
	const int n = 40000000;
	int* p = generate(n, 3);
	benchmark("intsumsq", isumsq, p, n);
	delete [] p;

	double* q = generate(n, 3.0);
	benchmark("sumsq", sumsq, q, n);
	delete [] q;
}
