#include <iostream>
// bit masking

/*
   A  B   OUT
   ==========
   x  0   1
   x  1
   x
   x

*/
// 1011xx10
// 00001100 = mask is zero where it does NOT change

// set all bits marked xx to 1
uint8_t set(uint8_t a) {
  return a | 0x0C;
}

// set bits marked x to zero 0010x1x0
//0010x1x0
//11110101
//00100100
uint8_t clear(uint8_t a) {
  return a & 0xF5;
}

// flip bits marked x to zero 0010x1x0
// XOR with 1 to flip
uint8_t toggle(uint8_t a) {
  return a ^ 0x0A;
}