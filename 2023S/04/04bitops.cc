#include <iostream>
using namespace std;

int main() {
/*
A  B    A OR B
0  0    0
0  1    1
1  0    1
1  1    1

0010 1011
1101 0100
=========
1111 1111

*/

/*
  011
  100
  ----
  1 1 1 = 7

  0
  1
  2
  3
  4
  5
  6
  7
  8
  9
  A
  B
  C
  D
*/


  
  uint32_t a = 0x2B | ~0x2B; // 0x0000002B | 0xFFFFFFD4 = 0xFFFFFFFF
  uint64_t b = 0x2B | ~0x2B; // 0x00000000FFFFFFFF
  uint64_t c = 0x2BULL | ~0x2BULL;
   // 0x000000000000002B | 0xFFFFFFFFFFFFFFD4  = 0xFFFFFFFFFFFFFFFF
  uint64_t  d  = 0x2B & ~0x2B; //0x000000000  
  

  int a = 5 && 6; // true and true = true


  int x = 3, y = 4;
  if (x < 3 & y < 5) {
    cout << "yes";
  }
    //x=3  011 ,y=4  100
  x = x ^ y; // x= 111 = 7
  y = y^ x; // y= 011
  x = x^ y; // x = 100
  x = x ^ x; // x=0 

  x = 1 << 3; //x=8  00000001000
  x <<= 2; // x=32
  x >>= 3; //x = 4
  x >>= 5; // x = 0

  uint64_t m = 23;
  m = (m >> 3) | (m << 61); // ror 3


}