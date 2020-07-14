#include <iostream>

int main() {
  {
    // old style!
    int a; //  on Arduino, int=16 bits -32768..32767
    long int b; // 32 bits?    short <= int <= long  int >=16
    short int c;
    long long int d;
  }
  {
//what is a bit??? 
// binary digit  LOW HIGH --> 0 or 1

// 8bits 2 * 2 * 2 * 2 *2 * 2 * 2 * 2  = 2 to the power 8 = 16*16=256
  // standardized, unsigned 
    uint8_t a = 0;// 256 different values. one is zero! 0..255
    uint16_t b = 0; // 65536 0..65535
    uint32_t c = 0;
    uint64_t d = 0;

// signed
    int8_t e = 0;  // -128 .. +127
    int16_t f = 0; // -32768 .. +32767
    int32_t g = 0;
    int64_t h = 0;
}

/*
        unsigned      signed
000         0           0
001         1           1
010         2           2
011         3           3
100         4           -4
101         5           -3
110         6           -2
111         7           -1 

   111
  +001
  ====
  1000

*/