#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

/*
	What floating point operations are optimized?
	Compiler writers are constantly upping their game, 
	so this code can be run each semester to see
	what the current state is. In general however, because
	floating point violates associativity:

	a + b + c  is NOT exactly equal to a + (b + c)

	compilers are extremely reluctant to do rearranging of terms for you.
*/

double divideBy3(double x, uint32_t n) {
	double sum = 0;
	for (uint32_t i = 0; i < n; i++, x += 0.1)
		sum += x / 3.0;
	return sum;
}

double precomputingInverse(double x, uint32_t n) {
	double invC = 1.0 / 3.0;
	double sum = 0;
	for (uint32_t i = 0; i < n; i++, x += 0.1)
		sum += x * invC;
	return sum;
}

double doesCompilerPrecomputeInverseForConstants(double x, double y) {
	return (x + y) / 3;
}

double doesCompilerOptimizeSqrtSquared(double x) {
	return sqrt(x) * sqrt(x);
}

double doesCompilerOptimizeSeparatedConstants(double x) {
	return 2.0 * x / 3.0; // probably not optimized
}

double handOptimizedNoDivision(double x) {
	return x * (2.0 / 3.0); // hand-optimized, no division at all
}

double multiplyByZero(double x) {
	return x * 0.0;
}

template<typename Func>
void benchmark(const char msg[], Func f, double x, uint32_t n) {
	cout << msg << '\t' << flush; // display the message showing which test
	clock_t t0 = clock(); // get the start time
	f(x,n); // execute the function
	clock_t t1 = clock();
	cout << (t1-t0) << '\n';
}

int main() {
	double x = 1.0 / rand(); // get a number the compiler can't predict (a variable)
	double y = 1.0 / rand(); // get a number the compiler can't predict (a variable)
	double d1 = 2.0 + 3.0; // constant, precomputed
	double d2 = 2 + 3.0; // automatically type promoted, precomputed
	double d3 = x + y; // can't be optimized, compiler does not know x y
	double d4 = x - y; // can't be optimized, compiler does not know x y
	double d5 = x * y; // can't be optimized, compiler does not know x y
	cout << d1 << ' ' << d2 << ' ' << d3 << '\n';

	const int n = 100000000;
	benchmark("precomputingInverse", precomputingInverse, x, n);
	benchmark("divideBy3", divideBy3, x, n);
	cout << doesCompilerOptimizeSqrtSquared(2.0) << '\n';
	cout << "x=" << setprecision(15) << setw(15) << x << '\n';
	cout << "sqrt(x)*sqrt(x)=" << setprecision(15) << setw(15) <<
		doesCompilerOptimizeSqrtSquared(x) << '\n';
	cout << "sqrt(-1.25)=" << doesCompilerOptimizeSqrtSquared(-1.25) << '\n';
}
