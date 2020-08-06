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
  cout << hex;
  cout << removeBits(0x12345678, 0x0030) << '\n';
  cout << removeBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x12345078
  cout << removeBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x12341478
  cout << setBits(0x12345678, mask) << '\n'; // replace mask by a value so result=0x163FD779
  int v = 0x1234;
  v = toggle(v, mask); // replace mask so v becomes 0x1034
  cout << v << '\n';
  v = toggle(v, mask); // mask should be the same as above, v should be back to 0x1234

  cout << testBits(v, mask) // test the bits labelled y: 000y 00y0 0011 0100 and return true if they are both set
  cout << testBits(v, 0x1400) // should return false since both these bits are NOT set.

		/*		1 << i
          1 << 0      1      lsl r0, #0
          1 << 1      2      lsl r0, #1
          1 << 2      4      lsl r0, #2
          1 << 3      8   
					                   ...
                             lsl r0, #31
		*/
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
