/*
	Review of C++ we have covered
 */

//legacy types ( int, char, long int, long, short int, short, long long)

//new C++11 portable types
//unsigned: uint8_t, uint16_t, uint32_t, uint64_t
//signed: int8_t, int16_t, int32_t, int64_t

//floating point types (IEEE754 standard)
//float, double
// nonstandard (and we don't use it) long double

// next gen standard (not in hardware yet) quad precision. available in gnu
// as __float128
// also __int128 is in hardware on x86 architecture avialable in gcc

/*
	You should know the following sources of bugs:
	uninitialized variables
	overflow
	roundoff error
  bounds checking
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

void bugs() {
	uint32_t ans = prod(1000000, 2000000);
	cout << ans;
	cout << sum(10);
  cout << yes_or_no(10.0, 100);
	int x[] = {4, 2, 5, 9};
	cout << average(x, 4);
}


//pass by reference
void stats(....) {

}

int main() {
	double x[] = {10, 20, 30, 40};
	double mean, max, min;
	stats(x, 4, mean, max, min);
}
