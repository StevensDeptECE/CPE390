/*
	Review of C++ we have covered

1. legacy types ( int, char, long int, long, short int, short, long long)

2. new C++11 portable types
   unsigned: uint8_t, uint16_t, uint32_t, uint64_t
   signed: int8_t, int16_t, int32_t, int64_t
2b. integer errors (overflow, underflow)

3. floating point types (IEEE754 standard) 
   float, double
   nonstandard (and we don't use it) long double
  
   next gen standard IEEE754-2008 (not in hardware yet) quad precision.
   available in gnu as __float128
   also incidentally __int128 is in hardware (x86 only)
3b. floating point errors: roundoff errors, numbers not exactly representable
   associativity does not hold: a + b + c != a + (b+c)

4. calling functions, passing parameters

5. recursive functions
   a function that calls itself and has a terminating condition.
   Know how to write factorial recursively and iteratively


6. object oriented programming we have just touched on, so it is not
   on the test.

7. 

	You should know the following sources of bugs:
	uninitialized variables
	overflow
	roundoff error
  bounds checking

For each bug, identify the reason the program isn't working and if it can be fixed, fix it.
 */

uint32_t prod(uint32_t a, uint32_t b) {
	return a * b;
}

uint32_t sum(int n) {
	int s;
	for (int i = 1; i <= n; i++)
		s += i;
	return s;
}

bool yes_or_no(float sumin, uint32_t n) {
	float sum = 0;
	float x = 0;
	for (int i = 0; i < n; i++, x += 0.1)
		sum += x;
	return sum == sumin;
}

double average(int x[], int n) {
	double sum = 0;
	for (int i = 0; i <= n; i++)
		sum += x[i];
	return sum/n;
}

double f(double x) { return x*x - 3; }

double count(double a, double b, uint32_t num_steps) {
	const double dx = (b-a) / num_steps;
	for (double x = a; x != b; x += dx) {
		cout << x << ' ';
	}
	cout << '\n';
}

void bugs() {
	uint32_t ans = prod(1000000, 2000000);
	cout << ans << '\n';
	cout << "sum(10)=" << sum(10) << '\n';
  cout << "yes_or_no=" << yes_or_no(10.0, 100) << '\n';
	int x[] = {4, 2, 5, 9};
	cout << "average: " << average(x, 4) << '\n';

	cout << "count: " << count(3, 10, 5) << '\n';
}

int main() {
	bugs();

	// 1. write a function to compute sum of cubes from a to b:
	uint64_t ans1 = cubeit(2, 5); // 2*2*2+3*3*3+4*4*4+5*5*5

	double d[] = {1, 5, 10, 50};

	double ans2 = diffsquares(d, 4); // compute sum(squares) - square(sum)
	// 1*1+5*5+10*10+50*50 - (1+5+10+50)**2
	
	double x[] = {10, 20, 30, 40};
	double mean, max, min;
	stats(x, 4, mean, max, min);
	cout << "mean=" << mean << " max=" << max << " min=" << min << '\n';

	// write a recursive function to compute factorial
	cout << "factorial(5)=" << factorial(5) << '\n';
	
	/*
    write a recursive  function gcd (greatest common denominator)
    for gcd(a,b)
	  termination condition: if b is zero, the result is a
    general recursion relationship: gcd(a,b) = gcd(b, a mod b)
	*/
  cout << "gcd(12, 18)=" << gcd(12,18) << '\n';

	/*
		assembler example problems
		using AARCH64, write the following functions

		for all AARCH64 instructions, the x registers from 0 to 30 are 64-bit
		the w registers are the low half of the x registers.

		You should know the following instructions

		mov  x0, x1   // x0 = x1 (64 bit)
    mov  w5, w8   // w5 = w8 (32 bit)
		add  x2, x3, x9 // x2 = x3 + x9
    sub  x4, x3, x5 // x4 = x3 - x5
    mul  x5, x6, x8 // x5 = x6*x8
    udiv x1, x3, x4 // x1 = x3 / x4
		ret  // return to caller
    bl   _Z1fii  // call a function (in this case, f(int,int))
	 */
	int average(int, int);

	// compute the average of two integers  (as a whole number)
	cout << average(3, 5) << '\n'; // _Z7averageii  answer = 4
	cout << average(6, 7) << '\n'; // _Z7averageii  answer = 6

	uint64_t sumsq(uint64_t, uint64_t, uint64_t);
	// compute integer sum of the squares (all values 64 bit)
	uint64_t ans3 = sumsq(3ULL, 5ULL, 7ULL); // 3*3+5*5+7*7 = 9+25+49=83
	cout << ans3 << '\n';
}
