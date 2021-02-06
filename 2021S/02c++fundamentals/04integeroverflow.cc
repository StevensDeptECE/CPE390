#include <iostream>
using namespace std;
/*
  in decimal we use powers of 10
  100s = 10 to the 2
  10s = 10 to 1
  1s = 10 to 0
  921
integers hypothetical 3-bit number

        unsigned    signed
  421
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

 8 bit integer   0..255          -128..127
 16 bit integer  0.65535         -32768...32767
*/

int main() {
  for (int i = 1, count = 0; count < 100; i *= 2, count++)
    cout << i << ' ';
}