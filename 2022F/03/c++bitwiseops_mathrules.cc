#include <iostream>
using namespace std;

int main() {
  uint8_t a = 57; // 00111001
  uint8_t b = 0x2B | ~0x2B ; // 0xFF
  uint8_t c = ~0x2B; // 11010100
  uint8_t d = 0x1C | 0x31; // 00011100
                           // 00110001
                           // 00111101
  uint8_t e = a & b;
  uint8_t f = a ^ b; //00111001
                     //11111111
                     //11000110  A xor 1 = NOT A
  uint8_t g = 3 << 2; // 3*4
  uint8_t h = 17 >> 1; // 17 / 2 = 8
  uint8_t i = 19 >> 3 << 2; // 00010011 --> 00000010
  // 00001000 = 8
  uint8_t j = 4;
  j = (j << 2) | (j >> 6); // claim: this is ROL by 2

  j += 0;
  j = j * 1;




  uint8_t j = 18 / 8 * 4; = 8
  uint64_t m = 10 / 3 / 4; // 0
  double x = 10 / 3 /  4; // 0.0
  double y = 10 / 4 * 2; /4.0
  // type promotion
  double z = 10 / 4.0 * 2; // 10 --> 10.0, 10.0 / 4.0 = 2.5 * 2 = 5.0



  if (a < 2 & f(b) > 3) { // logical AND is short-circuiting

  if (a < 2 && f(b) > 3) { // logical AND is short-circuiting
    // do it
  }

  if (a > 3 || f(B) > 5) { // logical OR short circuits..
  }



}