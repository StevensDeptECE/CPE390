#include <iostream>

//IEEE754

int main() {
  // float is 32 bits
  // seeeeeeeemmmmmmmmmmmmmmmmmmmmmmm
  // 1 sign, 8 exponent, 23 mantissa
  float f1 = 1.0f;
  float f2 = 1.234567f; // ~7 digits accuracy
  float f3 = 1.234567e+23f; // 1234567xxxxxxxxxxxxxxxxx.xxxxx
  float f4 = 1.234567e-32f; // .000000...1234567xxxxx
  //Kruger's 1st rule of floating point
  // ALWAYS USE DOUBLE!!!


// double is 64 bits
// seeeeeeeeeeemmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
// 1 sign bit
// 11 exponent bits
// 52 mantissa bits
  double d1 = 1.5;
  double d2 = 1.23456789012345e+308;
  double d3 = 1.23456789012345e-308;


// infinity and NaN


}