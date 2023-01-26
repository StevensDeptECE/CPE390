#include <iostream>
using namespace std;
int main() {
  int a; // 32 bits on my machine 4 bytes
  uint64_t b;  // 64-bit 8 bytes
  float c;     // 32-bits  4 bytes
  double d;    // 64 -bits 8 bytes

  int e[10]; // single contiguous block of 10 int = 10*4 = 40
  double f[100]; // 100*8 = 800

  uint32_t x[3][4]; // 3*4*4 = 48
  uint32_t y[100][5]; // 2000
  float z;
  cout << a;
  cout << b;
  cout << c;
  cout << d;
  cout << e[0];
  cout << f[0];

}