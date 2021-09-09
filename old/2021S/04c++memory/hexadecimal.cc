  #include <iostream>

using namespace std;
/*
  hexadecimal = base 16
  0 0000
  1 0001
  2 0010
  3 0011
  4 0100
  5 0101
  6 0110
  7 0111
  8 1000
  9 1001
  A 1010
  B 1011
  C 1100
  D 1101
  E 1110
  F 1111


  convert to binary
  0x90138B5E = 1001 0000 0001 0011 1000 1011 0101 1110
  0xDEADBEEF = 1101 1110 1010 1101 1011 1110 1110 1111


  10101101 10101010 10101101 01111011

  AD       AA       AD       7B


*/
int main() {
  int x = 3;
  int y = 123; // 1 * 100 + 2 * 10 + 3
  int z = 0xFE2C103C;
  uint64_t w = 0xF1234567890CD23E;

  int r = 0123; //base 8 (octal) 1*64 + 2*8 + 3 = 83

}