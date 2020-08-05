#include <iostream>
/*
  This lab exercises 5 operations

1. Making any bit true
2. Making any bit false
3. Replacing a bit with another bit
4. testing a bit
5. toggling a bit (true-> false, and false -> true ie NOT)

 */
int main() {
  int v = 0x12345678; // 0001 0010 0011 0100 0101 0110 0111 1000

  int a = 0xF123; // 1111 0001 0010 0011
  int b = 0xA9BC; // 1010 1001 1011 1100
  int c = a & b;  // 1010 0001 0010 0000  bitwise AND  
  int d = a | b;  // 1111 1001 1011 1111  bitwise OR
  int e = a ^ b;  // 0101 1000 1001 1111  bitwise XOR
  int f = ~a;     // 0000 1110 1101 1100  bitwise NOT
  a = a | 0x8 ; // 1000  set a bit by using OR
  //     1111 0001 0010 0011
  // AND 1101 1111 1111 1111
  //     1101 0001 0010 0011
  int c;  
  c = a & 0xCFFF; // clear just two bits  // 11yy 0001 0010 0011

  c = a & 0xCFFF | 0x1000; // 1100 0011 0010 0011 -> 1101 0011 0010 0011

  if (3 < 4 && 4 < 5) {} // logical AND, we will talk about this some other time
  if (3 < 4 || 5 < 5) {} // logical OR, we will talk about this some other time

  if (a & 1) { // true if a is odd

  }

  if (a & 0x2102 ) { // 11y1 000y 0010 00y1     if any of those bits are set
                 // 0010 0001 0000 0010  0x2102
  }


  if ((a & 0x2102) == 0x2102 ) { // 11y1 000y 0010 00y1     if all of those bits are set
                 // 0010 0001 0000 0010  0x2102
  }

  c = a ^ 0x2000; // 1111 0001 0010 0011 toggle (flip) a bit
                  // 0010 0000 0000 0000
                  // 1101 0001 0010 0011
  c = a ^ 0x2000; // 1111 0001 0010 0011 toggle it again and it's back to the original

  cout << hex;

  cout << removeBits(0x12345678, 0x0030) << '\n';
  cout << removeBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x12345078
  cout << removeBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x12341478
  cout << setBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x163F1479

  int v = 0x1234;
  v = toggle(v, mask); // replace mask so v becomes 0x1034
  cout << v << '\n';
  v = toggle(v, mask); // mask should be the same as above, v should be back to 0x1234

  cout << testBits(v, mask) // test the bits labelled y: 000y 00y0 0011 0100 and return true if they are both set
  cout << testBits(v, 0x1400) // should return false since both these bits are NOT set.

#if 0
  cout << hex;
  for (int i = 0; i < 32; i++)
    clearBit(0xF1234567, i) << '\n';
  cout << "\n\n";
  for (int i = 0; i < 32; i++)
    setBit(0xF1234567, i) << '\n';
  cout << "\n\n";


  // take the first number, remove the bits in the second number (AND with NOT)
  // and OR in the third number. Return the answer
  cout << replaceBits(0xABCD1234, 0x0F00, 0x0300) << '\n';
  cout << replaceBits(0xABCD1234, 0x1F00, 0x0400) << '\n';
#endif
}
