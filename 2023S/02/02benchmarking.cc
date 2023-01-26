#include <iostream>
using namespace std;
// 2^8 = 256    2^15 = 32768    2^16 = 65536   

uint64_t prod(int a, int b) ;
uint64_t sum(int a, int b) ;



uint64_t choose(int n, int r) ;  // n! / (r! (n-r)!)
// choose(52,6) = 52! / (6! 46!) = 12.5million

int main() {
    // uint8_t a = 0 .. 255
    // uint16_t b = 0 .. 65535
    // int8_t c = -128 .. 127

    // short = 16 bits
    // 0 .. 2^16-1 = 65535
    // -32768 .. 32767
    
    int sum = 0;
    for (uint32_t  i = 1; i <= 100000; i++)
      sum += i;

    uint64_t prod = 1;
    for (uint32_t  i = 1; i <= 10; i++)
      prod = prod * i;  // prod *= i



//    for (int i = 0; i < 4000000000; i++) {
 //     __asm("nop");
 //   }




}