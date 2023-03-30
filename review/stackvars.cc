#include <iostream>

uint64_t f(uint64_t a, uint64_t b) {
    char s[32];
    for (int i = 0; i < 32; i++)
     s[i] = i;
    uint32_t sum = 19;
    for (int i = 0; i < 32; i++)
      sum += s[i] >> 1;
    return sum;
}