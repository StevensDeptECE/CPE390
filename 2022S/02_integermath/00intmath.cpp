#include <iostream>
#include <cstdint>

using namespace std;
int main() {

// using legacy int type is not a good idea because it is not standardized
// int may be signed or unsigned
// it may be any size >= 16 bits
  //for (int a = 1; a < 100000; a++)
  //  cout << a;

/*
  what is a bit? 1 (high) or 0 (low)   
  high = 1.2V
  low = 0V

   each bit has 2 values/states (0,1)
   8 bits is a byte = 2*2*2*2*2*2*2*2 = 2**8 = 256

       unsigned   signed
 000 = 0           0
 001 = 1           1
 010 = 2           2
 011 = 3           3
 100 = 4           -4
 101 = 5           -3
 110 = 6           -2
 111 = 7           -1

  11
  111
 +001
 ====
 1000
*/


  uint8_t a = 0;
  a = 255; // max is power of 2 - 1
  uint16_t b = 0b0000000000000000;
  b = 0b1111111111111111; // 65535  (power of 2 - 1)
  // 2**10 = 1024 = 1k
  // 2**20 = 1024*1024 = 1M
  // 2**30 = 1024**3 = 1G

  uint32_t c = 1234567890; // 2**32 -1    MAXINT=4294967295
  uint64_t d = 123456789012345678ULL; // 2**64

  int8_t e = 0; //-128...127;  

   a = 255 + 2;
   cout << a << '\n';
   a -= 3;
   cout << a << '\n';

   a = 200 + 300; // 500 MOD 256 = between 0 and 255
   a = 4 - 2;
   a = 2 - 4;
   a = 20 * 20; // 400 mod 256

   c = 1000000 * 1000000;

   d = 2 / 3; // 0
   d = 7 / 2; // 3
   d = 7 % 2; // 1
   d = 7 % 5; // 2

   d = -a;   
   d = +a; // unary + does nothing!

}