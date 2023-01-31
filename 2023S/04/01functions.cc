#include <iostream>


uint64_t f1(uint64_t a, uint64_t b) {
  return a+b;   
}

uint64_t f2(uint64_t a, uint64_t b) {
  return a-b;   
}

uint64_t f3(uint64_t a, uint64_t b) {
  return a*b;   
}

uint64_t f4(uint64_t a, uint64_t b) {
  return a/b;   
}

uint64_t f5(uint64_t a, uint64_t b) {
  return a%b;   
}



#if 0
uint64_t factorial(uint8_t n) {
    //factorials get really big for n > 20
    if (n > 20) {
        printf("way too big for a 64 bit number to express\n");
        return -1;
    }
    result = 1;
    for(int i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}
#endif