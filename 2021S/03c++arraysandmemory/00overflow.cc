#include <iostream>
#include <iomanip>
using namespace std;

// non-standard 128 bit int, but I can't print it!
__int128_t fact(int num) {
  __int128_t total = 1; // needs to be uint64
  for (int i = 1; i <= num; i++) {
    total *= i; // total = total * uint64_t(i)
  }
  return total;
}

double fact2(int num) {
  double total = 1; // needs to be uint64
  for (int i = 1; i <= num; i++) {
    total *= i; // total = total * uint64_t(i)
  }
  return total;
}

int main() {
	//NOT IMPLEMENTED FOR 128 bit! BOO!	cout << fact(25);
	// floating point standard: IEEE754
	float f = 1.5f; // 32 bits, 7  digits 1.234567 12345.67
	//1.234567e+38 -1.234567e-38
	double d = 1.23456789012345; // 64bits 15 digits
	//1.23456789012345e+308
	//1.23456789012345e-308
	long double d2 = 1.23456789012345678901234567890L;
	cout << setprecision(16);
	for (int i = 1; i <= 100; i++)
		cout << i << ": " << fact2(i) << '\n';

	
	for (float f = 0; f < 10; f++)
		cout << f << ' ';
	cout << '\n';
	/*
		binary fractions
		101 = 4+1 = 5

		101.1 = 5.5
    101.01 = 5.25
		.001 =  1/8 = .125

		decimal fractions

		1/2 = 0.5 = 5/10
		1/3 = .333333333333333333


		1/10 = 0.1
		1/10 = 1/2 * 1/5
    .987 = 9/10 + 8/100 + 7/1000


		  1/2   1/4   1/8   1/16   1/32   1/64 ....
		.  1     0     1     0      0      0 = 5/8 = .625
    .  0     0     0     1      


	 */

	cout << setprecision(8);
	cout << 0.1;
	for (float f = 0; f < 10; f += 0.1) //roundoff error
		cout << f << ' ';
	cout << '\n';

	cout << setprecision(30);
	cout << d2;
}
