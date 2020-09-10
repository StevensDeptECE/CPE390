
#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
/*
  Floating point is an inexact approximation of real numbers

  a + b ==  b + a   commutivity works (the hardware is symmetric)
  1.0 + 0.1 == 0.1 + 1.0

  However

  a + b + c == a + (b+c) ?? NO. Associativity is NOT GUARANTEED
  1.0 + 2.0 + 3.0 == 1.0 + (2.0 + 3.0) for whole numbers it kind of works
   1.00000000000000
  10.0000000000000
  11.0000000000000
  =================
 100.0000000000000

 how is a number like 0.5 represented?

 1.00000000000000 = 1
 0.10000000000000 = 1/2
 0.01000000000000 = 1/4
 0.00100000000000 = 1/8

 123.   5    3
     1/10  1/100   1/1000

Example: hypothetical 3-digit computer
1.23
 .899
 .768

 1.23
+ .899
======
 2.12
+ .768
======
 2.88

 .899
 .768
=====
1.66
1.23
====
2.89

1/10 is not representable in binary. Why not?

1/3 = 0.33333333
1/2 is a nice fraction in decimal, why? because 10 is divisible by 2 not 3

binary = base 2
1/10 = 1/2 * 1/5

. 1/2   1/4   1/8  1/16  1/32   1/64   ...
.  0     0     0     1     0      1     0   1 0101010101  repeating fraction!!!
*/
cout << setprecision(7);
  1.0 + 0.1 == 0.1 + 1.0

  However

  a + b + c == a + (b+c) ?? NO. Associativity is NOT GUARANTEED
  1.0 + 2.0 + 3.0 == 1.0 + (2.0 + 3.0) for whole numbers it kind of works
   1.00000000000000
  10.0000000000000
  11.0000000000000
  =================
 100.0000000000000

 how is a number like 0.5 represented?

 1.00000000000000 = 1
 0.10000000000000 = 1/2
 0.01000000000000 = 1/4
 0.00100000000000 = 1/8

 123.   5    3
     1/10  1/100   1/1000

Example: hypothetical 3-digit computer
1.23
 .899
 .768

 1.23
+ .899
======
 2.12
+ .768
======
 2.88

 .899
 .768
=====
1.66
1.23
====
2.89

1/10 is not representable in binary. Why not?

1/3 = 0.33333333
1/2 is a nice fraction in decimal, why? because 10 is divisible by 2 not 3

binary = base 2
1/10 = 1/2 * 1/5

. 1/2   1/4   1/8  1/16  1/32   1/64   ...
.  0     0     0     1     0      1     0   1 0101010101  repeating fraction!!!
*/
cout << setprecision(7);
  1.0 + 0.1 == 0.1 + 1.0

  However

  a + b + c == a + (b+c) ?? NO. Associativity is NOT GUARANTEED
  1.0 + 2.0 + 3.0 == 1.0 + (2.0 + 3.0) for whole numbers it kind of works
   1.00000000000000
  10.0000000000000
  11.0000000000000
  =================
 100.0000000000000

 how is a number like 0.5 represented?

 1.00000000000000 = 1
 0.10000000000000 = 1/2
 0.01000000000000 = 1/4
 0.00100000000000 = 1/8

 123.   5    3
     1/10  1/100   1/1000

Example: hypothetical 3-digit computer
1.23
 .899
 .768

 1.23
+ .899
======
 2.12
+ .768
======
 2.88

 .899
 .768
=====
1.66
1.23
====
2.89

1/10 is not representable in binary. Why not?

1/3 = 0.33333333
1/2 is a nice fraction in decimal, why? because 10 is divisible by 2 not 3

binary = base 2
1/10 = 1/2 * 1/5

. 1/2   1/4   1/8  1/16  1/32   1/64   ...
.  0     0     0     1     0      1     0   1 0101010101  repeating fraction!!!
*/
cout << setprecision(7);
  for (float i = 1; i <= 10; i+=0.1 )
  {
    cout << i << " ";
  }

    
    cout << "\n\n        ";
  for (int i = 1; i <= 5; i++)
  {
    for (int j = 1; j <= 5; j++)
    {
      cout << i * j << " ";
    }
    cout << "\n";
  }
}