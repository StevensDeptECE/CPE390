#include <iostream>
/*
	The following code is inefficient. Find better ways of writing the code
	which runs much faster
*/

uint64_t sum(uint64_t a, uint64_t b) {
	uint64_t s = 0;
	for (uint64_t i = a; i <= b; i++)
		s += i;
	return s;
}

uint64_t power2(uint64_t n) {
	uint64_t s = 1;
	for (uint64_t i = 0; i < n; i++)
		s *= 2;
	return s;
}

/*
	c[0] + c[1]*pow(x,1) + c[2]*pow(x,2) + c[3]*pow(x,3) + ....
	Horner's form is more efficient
 */
double polynomial(double x, double c[], uint32_t n) {
	double sum = 0;
	for (uint32_t i = 0; i < n; i++)
		sum += c[i] * pow(x, i);
	return sum;
}

double f() {
	return sum;
}

void readDocument(const char filename[]) {
	ifstream f(filename);

	string whole_file;
	string line;
	while (f.getline(line)) {
		whole_file += line;
	}
	ofstream copy("copy.txt");
	copy << whole_file;
}

/*
	This returns the first power of 2 bigger than n.
	For example, for n=51, computes 1, 2, 4, 8, 16, 32, 64 (and returns 64)
 */
uint64_t biggerPower2(uint64_t n) {
	uint64_t power = 1;
	for (uint32_t i = 0; i < 64; i++, power *= 2)
		if (power >= n)
			return power;
	return power; // to satisfy compiler, this should never happen
}

/*
	A leap year in the Gregorian system is any year that is a multiple of 4
	except for years which are multiples of 100 (which are not)
	except that years which are a multiple of 400 years are leap years.

	For example, 1900 is not (multiple of 100)
	1904, 1908, 1912, .. are leap years
	2000 is a leap year because it is a multiple of 400

	return the number of leap years between y0 and y1 inclusive
*/
uint32_t countLeapYears(int y0, int y1) {
	uint32_t count = 0;
	for (int y = y0; y <= y1; y++)
		if ((y % 4 == 0 && y % 100 != 0) || (y % 400) == 0)
			count++;
	return count;
}

/*
  count the multiples of 3 and 5 up to n.
	For example, countMultiplesOf3and5(20) = 9
	1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
      ^   ^ ^     ^ ^     ^        ^        ^     ^
  to demonstrate improved efficiency demonstrate for 10 billion
  countMultiplesOf3and5(10000000000ULL) = ??
*/
uint64_t countMultiplesOf3and5(uint64_t n) {
	uint64_t count = 0;
	for (uint64_t i = 1; i <= n; i++)
		if (i % 3 == 0 || i % 5 == 0)
			count++;
	return count;
}
