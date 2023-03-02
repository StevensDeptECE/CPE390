#include <iostream>
using namespace std;

/*
421    unsigned    signed (2s-complement)
000    0           0
001    1           1
010    2           2
011    3           3
100    4           -4
101    5           -3
110    6           -2
111    7           -1

add unsigned (a + b) mod 8


  101 >> 1 = 010    5 / 2 = 2
  010 << 1 = 100    2 * 2 = 4
  010 << 5 = 000    2 * 32 = 0 overflow

  unsigned 
  1010 = 8 + 2 = 10

  2s complement
                1
  1010    ==> 0101
            + 0001
              0110 = 4+2=6

  1. invert every bit
  2. add 1

  1111111100100101
  0000000011011010
  0000000011011011
         128+64 + 16+8 +2 + 1
         192+24+3
         -219
  00000000000011
  11111111111100

  11111111111101 >> 1     3 / 2 = 1

  11111111111110  -3/2  -1.5
  00000000000001
  00000000000001
  00000000000010  -2
*/

int main() {
  int a = 3 + 4;
  uint64_t b = 3 - 4;
  uint64_t c = 5*6;
  uint64_t d = 1000000 * 1000000;
  uint64_t e = 7 / 2;
  uint64_t f = 7 % 2;
  int64_t g = -f;
  uint64_t h = c << 4;
  h >>= 2; // h = h >> 2;
  // += -= *= /= %= <<= >>= &= |= ^=

  int64_t i = -3;
  i >>= 1;
  // equivalent  to ROR 3, or rol 61
  uint64_t j = (h << 3) | (h >> 61); 

  for (int i = 0; i< 100; i++) {

  }
  if (d < 3) {


  } else {
    
  }
}