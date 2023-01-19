#include <iostream>
// int = whatever is fastest on your machine
// int >= 16 bits
// 2^16 = 65536
// -32768.. 0 1 .. 32767
// int = 32 bits -2.1billion  .. + 2.1billion

uint64_t add(uint64_t a, uint64_t b) {
    return a + b;
}

int f(int a) {
  return a*2;
}

uint64_t add2(uint64_t a, uint64_t b);

//Author: Dov Kruger
int main() {
    std::cout << f(3) << '\n';
    uint64_t c = 2 + 3; // constant expressions are evaluated at compile time 
    uint64_t d = add(2,3); // inline functions are replaced by code
    uint64_t e = add2(2,3);

}

uint64_t add2(uint64_t a, uint64_t b) {
    return a + b;
}