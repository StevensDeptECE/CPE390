#include <cmath>
#include <cstdint>
using namespace std;


int op0(int a, int b) {
	return a + b;
}

int op1(int a, int b) {
	return a - b;
}

int op2(int a, int b) {
	return a * b;
}

int op3(int a, int b) {
	return a / b;
}

int op4(int a, int b) {
	return a % b;
}

int op5(int a) {
	return a-a;
}

uint64_t op5(uint64_t a, uint64_t b) {
	return a + b;
}

uint64_t op6(uint64_t a, uint64_t b) {
	return a - b;
}

uint64_t op7(uint64_t a, uint64_t b) {
	return a * b;
}

uint64_t op8(uint64_t a, uint64_t b) {
	return a / b;
}

uint64_t op9(uint64_t a, uint64_t b) {
	return a % b;
}

double op10(double a, double b) {
	return a + b;
}

double op11(double a, double b) {
	return a - b;
}

double op12(double a, double b) {
	return a * b;
}

double op13(double a, double b) {
	return a / b;
}

double op14(double a) {
	return -a;
}

#if 0
// include the IEEE functions to extract mantissa and exponent
double op15(double a) {
	return ldexp(a);
}
#endif
//demonstrate all major math library calls
double op15(double a, double b) {
	return cos(a) * sin(b) + tan(a) * exp(-b) + log(a) + atan(a) + atan2(b, a)
		+ sqrt(a);
}

//optimization tests performed with g++ -O3
// even aggressive does not do these. There might be some special floating point
// optimization setting but I don't think so

// does the compiler realize this is zero?
// g++ -O3 NO
double opt1(double a) {
	return a - a;
}

// does compiler realize this expression is zero?
// g++ -O3 NO
double opt2(double a) {
	return a * 0;
}

// will compiler eliminate redundant multiply?
// g++ -O3 YES,  eliminates the multiply
double opt3(double a) {
	return a * 1;
}

// will compiler factor common terms?
// g++ -O3 NO, does not factor (too risky with roundoff)
double opt4(double a) {
	return a * 3 + a * 4;
}

// will compiler combine divisions?
// g++ -O3 NO,  but does turn the divisions into mult
double opt5(double a) {
	return a / 2 + a / 4;
}

// is compiler smart enough to precompute 1/a?
// Usually not because of fear of changing roundoff
// g++ -O3 NO,  everythign left intact
double opt6(double a) {
	return 1/a + 2/a + 3/a + 4/a + 5/a;
}

// does compiler realize that abs(a) is positive?
// No.
// g++ -O3 first eliminates the sign bit, then checks for negative
double opt7(double a) {
	return sqrt(abs(a)); // will compiler realize no need to check negative?
}

double opt8(double a) {
	return --a; // will compiler recognize this is just a?
}

// always positive, no way do compilers recognize this!
double opt9(double a, double b) {
	return sqrt(a*a+b*b);
}

// TODO: move this function for benchmarking! The optimizer is too smart
void f(int n){}


/*
	first integer operations, using a fake function to force generation of code.
 */

// call a function n times passing the number each time
void f0_1(int n) {
	for (int i = 0; i < n; i++)
		f(i);
}

// same thing as above but always do at least 1. Don't check first if n=0
void f0_2(int n) {
	int i = 0;
	do {
		f(i);
		i++;
	} while (i < n);
}

// sum the integers from 1 to n. Optimizer these days probably turns this into
// an equation in closed form, ruining the benchmark
int f0_3(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum += i;
	return sum;
}

// compute the product from 1 to n (ie n factorial). This will overflow for n>15
// this is purely a speed test to see how much time it takes for all those multiplies
int f0_4(int n) {
	int prod = 1;
	for (int i = 2; i <= n; i++)
		prod *= i;
	return prod;
}

// divide a bunch of numbers. The answer is zero which is very much not the point.
int f0_5(int n) {
	int divides = 1;
	for (int i = 1; i <= n; i++)
		divides /= i;
	return divides; // of course this is zero, but the compiler doesn't know that
}

int f0_6(int n) {
	int sumSquares = 0;
	for (int i = 1; i <= n; i++)
		sumSquares += i*i;
	return sumSquares;
}

// test if there is a fast integer sqrt routine.
// or this might call double sqrt(double)
int f0_7(int n) {
	int sumSqrt = 0;
	for (int i = 1; i <= n; i++)
		sumSqrt += sqrt(i);
	return sumSqrt;
}

/*
	Floating point speed routines, testing single precision first

 */
float f1_1(int n) {
	float sum = 0;
	for (float i = 1; i <= n; i++)
		sum += i;
	return sum;
}

float f1_2(int n) {
	float prod = 1;
	for (float i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

float f1_3(int n) {
	float sumFrac = 0;
	for (float i = 1; i <= n; i++)
		sumFrac += 1 / i;
	return sumFrac;
}

float f1_4(int n) {
	float sumSquares = 0;
	for (float i = 1; i <= n; i++)
		sumSquares += i * i;
	return sumSquares;
}

float f1_5(int n) {
	float sumCos = 0;
	for (float i = 1; i <= n; i++)
		sumCos += cos(i);
	return sumCos;
}

float f1_6(int n) {
	float sumExp = 0;
	for (float i = 1; i <= n; i++)
		sumExp += exp(-i);
	return sumExp;
}

/*
	Floating point speed routines, testing double precision

 */
double f2_1(int n) {
	double sum = 0;
	for (double i = 1; i <= n; i++)
		sum += i;
	return sum;
}

double f2_2(int n) {
	double prod = 1;
	for (double i = 1; i <= n; i++)
		prod *= i;
	return prod;
}

double f2_3(int n) {
	double sumFrac = 0;
	for (double i = 1; i <= n; i++)
		sumFrac += 1 / i;
	return sumFrac;
}

double f2_4(int n) {
	double sumSquares = 0;
	for (double i = 1; i <= n; i++)
		sumSquares += i * i;
	return sumSquares;
}

double f2_5(int n) {
	double sumCos = 0;
	for (double i = 1; i <= n; i++)
		sumCos += cos(i);
	return sumCos;
}

double f2_6(int n) {
	double sumSin = 0;
	for (double i = 1; i <= n; i++)
		sumSin += sin(i);
	return sumSin;
}

double f2_7(int n) {
	double sumExp = 0;
	for (double i = 1; i <= n; i++)
		sumExp += exp(-i);
	return sumExp;
}

double f2_8(int n) {
	double sumLog = 0;
	for (double i = 1; i <= n; i++)
		sumLog += log(i);
	return sumLog;
}


/*
	Array benchmarking. Testing memory access
*/

//declaring the array volatile so C++ is forced to actually read it each time
// 
int f3_1(volatile int a[], int len) {
	int sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[0]; // compiler thinks a might change every time. This is testing cache access
	return sum;
}

// sum up the elements of an array
int f3_2(const int a[], int len) {
	int sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[i];
	return sum;
}

// compute the average of the array. Note the sum is double even though the elements are not
double f3_3(const int a[], int len) {
	double sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[i];
	return sum / len;
}

// compute the product of the array. Note the sum is double even though the elements are not
double f3_4(const int a[], int len) {
	double prod = 1;
	for (int i = 0; i < len; i++)
		prod *= a[i];
	return prod;
}

// compute the sum of the double array
double f3_5(const double a[], int len) {
	double sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[i];
	return sum;
}

// compute the product of the double array
double f3_6(const double a[], int len) {
	double prod = 1;
	for (int i = 0; i < len; i++)
		prod *= a[i];
	return prod;
}

int main() {
	return 0;
}
