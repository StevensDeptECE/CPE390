#include <cstdio>
#include <iomanip>
#include <iostream>
using namespace std;

int main() {

  uint64_t a = 1ULL + 1234567890123ULL;
  float f = 1.2345678f;
  double d = 1.23456789012345;
  long double x = 1.2345678901234567890L;


  d = 123.456789012345;
	d = 1234567.89012345;
  d =  6.022e+23; // 602200000000000000000000.
	const double G = 6.78e-11;
	d = 3.34e+308;
	d = 3.21521212512515e-308
  printf("%f %lf", f, d);
  //  __float128

  // seeeeeeeemmmmmmmmmmmmmmmmmmmmmmm
  // seeeeeeeeeee

  //  101.000000000
  //  .101
  //  1/2 + 1/8 = .625

  // .2 2/10
  // .1 1/10
  // 1/3 = .33333333

  cout << '\n';
  cout << setprecision(8);
  for (float x = 0; x <= 10; x += .1)
    cout << x << ' ';
  cout << '\n';

  
}
