#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;

/*         1.
  seeeeeeeemmmmmmmmmmmmmmmmmmmmmmm
   01111111
   
  sign 0=+, 1=-
  exponent 2^-127 ... 2^127
  mantissa = 23 bits

   s^(e-127)

  10000000000000000000000000000000000
  01111111111111111111111111111111111
  1111111111111 * 2^38
  1111111111100 * 2^39


  sign 0=+, 1=-
  exponent 2^-1023 .. 1023
  mantissa = 52 bits
              1.
  seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

*/
double integrate(double a, double b, int n) {
  const double dx = (b-a)/n;
  double x = 0;
  for (int i = 0; i < n; i++, x += dx) {
    // x
  }
  return x;
}

int main() {
  // never use == or != with floating point, it's meaningless
  //for (double x = 0; x != 10; x += 0.1)
  //  ;

// solves the infinite loop bug
  for (double x = 0; x <= 10; x += 0.1)
    ;


// most correct
  double x = 0;
  for (int i = 0; i < 101; i++, x += 0.1)
    cout << x;
  cout << "\n\n";
  
  integrate(0.0, 5.0, 16);

  double a = 1.0 / 0.0;
  double b = -1.0 / 0.0;
  double c = a + b;
  double d = 0.0 / 0.0;
  double e = sqrt(a);
  double f = sin(a);
  double g = sqrt(-1);

  cout << f << '\n';
  if (isnan(f)) {
    cout << "bad computer!\n";
  }
  uint64_t* p = (uint64_t*)&f;
  cout << *p << '\n';  
  cout << hex << *p << '\n';

   p = (uint64_t*)&g;
  cout << *p << '\n';  
  cout << hex << *p << '\n';

  p = (uint64_t*)&d;
  cout << d << '\n';
  cout << *p << '\n';  
  cout << hex << *p << '\n';

}