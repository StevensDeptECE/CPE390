#include <iostream>

int main() {
  uint32_t x = 99;
  uint64_t a = 1000000000000000000ULL;
  int64_t b = -123456789012345678LL;

  int y = 99; // non-portable

  for (int i = 1; i <= 10; i++) {
    cout << i; // prints what? 12345678910
  }
  cout << '\n';

  //hW: write
  // 1. code to print even numbers from 2 to 20
  // 2. print out powers of 2 from 1 to 1024       1 2 4 8 16 32 64 128 256 512 1024
}