#include <iostream>
using namespace std;
/*
integers hypothetical 3-bit number

        unsigned    signed
  000   0           0
  001   1           1
  010   2           2
  011   3           3
  100   4           -4
  101   5           -3
  110   6           -2
  111   7           -1
  
  11
  111+1
    1
=====
 1000
*/

int main() {
  for (int i = 1, count = 0; count < 100; i *= 2, count++)
    cout << i << ' ';
}