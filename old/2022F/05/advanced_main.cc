#include "advanced.hh"
#include "benchmark.hh"
#include <numbers>
using namespace std::numbers;

void test1(const int* p, uint32_t n) {
	int min, max;
	double mean;
	stats(p, n, mean, min, max);	
}

void test2(uint32_t n) {
	double r = 3, theta = pi/2;
	double x,y;
	for (uint32_t i = 0; i < n; i++) // repeat n times so we can measure time
		polar2rect(r, theta, x, y);
}

int main(int argc, char* argv[]) {
	const uint32_t n = atoi(argv[1]); // get n from the command line
	int* p = new int[n];
	for (int i = 0; i < n; i++)
		p[i] = i; // put in some bogus values to test with
	test1(p, n);
	test2(n);
	delete [] p;
}
