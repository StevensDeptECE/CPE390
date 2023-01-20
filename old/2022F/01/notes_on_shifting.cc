#include <iostream>
using namespace std;

int main() {
  int a = 12 * 4; // constant expression
  int x;
  cin >> x;
  int b = x / 2;
  uint32_t c = x >> 1;
  // pow(2,8) = 256
  // pow(2,16) = 65536
  // pow(2, 32) = 42..... billion
  // pow(2, 64) = 1.8 quadrillion
  //   983 / 10 = 98

  //  10010010101010111001001010101011
  //  01001001010101011100100101010101
  uint32_t d = x * 32; // turns into: x << 5
   // compute x / 125128951
   // compute x / 256 turns into ???   x >> 8 
   int8_t e = 3; // -128.. +127
   /*
    bits  signed     unsigned
    000 = 0          0
    001 = 1          1
    010 = 2          2
    011 = 3          3
    100 = -4         4
    101 = -3         5
    110 = -2         6
    111 = -1         7
   */
  // e = 3 00000011
    e = e >> 1;  // or write:  e >>= 1
    //  00000001
    e = -3;
    // 2s complement arithmetic
    // 00000011 
    // 11111100 invert every bit
    // 11111101 = -3 add 1  
    e >>= 1;
    //signed right shift copies the sign bit
    // arithmetic shift
    //11111110

    // 4 machine language instruction
    // unsigned >> n    LSR  Logical Shift Right
    // unsigned << n    LSL
    // signed >> n      ASR
    // signed << n      ASL

    uint8_t aa = 5;
    int8_t  ab = aa;

}
