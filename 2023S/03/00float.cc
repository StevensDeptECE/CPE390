#include <iostream>
#include <iomanip>
#include <cmath>

int main() {
    uint8_t a = 255; // 11111111
    uint32_t b = 4'200'000'000U;
    float f = 1.2345678f; // 32 bits
    f = 12.345678f;
    f = 1.2345678e+38f;
    f = 1.2345678e-38f;
    /*
     sign = 1 0/1
     exponent = 8 bits where is the binary place
     mantissa = 24 bits digits of the number
        1xxxxxxxxxxxxxxxxxxxxxxx
        11.

        1.0 = 2^0   1.0 x 2^0
        2.0 = 2^1   1.0 x 2^1
        4.0 = 2^2
        3.0       11.0
        1.5        1.1
        1.25       1.01
        1.125      1.001
        4.5        100.1
    0 01111111    00000000000000000000000
                1.00000000000000000000000
                10.0000000000000000000000
     int8_t a = -128..127
    
    */


    double d = 1.23456789012345;


}