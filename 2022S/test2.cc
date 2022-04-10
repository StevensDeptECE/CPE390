#include <iostream>
using namespace std;
/*
	Test 2:
	ARM assembler instructions
	loops


	bitwise operations in C++ and ARM

	equivalence
  a = b & c       and  x0, x1, x2
  a = b | c       orr  x0, x1, x2
  a = b ^ c       eor  x0, x1, x2
  a = ~b          movn x0, x1
  
*/


// convert the following C++ code into the equivalent ARM assembler
int f(int a, int b, int c, int d) {
	return a & b | ~c ^ d;
}

uint64_t optimized1(uint64_t a, uint64_t b) {
	return (a >> b) | (a << (64-b)); // what arm instruction does this turn into?
}

uint64_t optimized2(uint64_t a) {
	return a * 16; // what arm instruction does this turn into?
}

uint64_t optimized3(uint64_t a) {
	return a / 32; // what arm instruction does this turn into?
}

uint64_t optimized4(uint64_t a) {
	return a % 64; // what arm instruction does this turn into?
}

/*
	Identify the value in the registers

  mov x0, #19
  mov x1, #24
  and x2, x0, x1 // x2=
  eor x3, x0, x1 // x3=
  orr x4, x0, x1 // x4=

 */
