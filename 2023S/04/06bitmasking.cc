#include <iostream>
#include <iomanip>
using namespace std;

/*
    bit twiddling
    bit masking
    101010101010101010101010100101010xxx0100101

    1. make a set of bits = 0
    2. make a set of bits = 1
    3. toggle a set of bits
    4. test whether all bits marked x are 1
    5. test whether any bits marked x are 1
*/

uint32_t clear(uint32_t a, uint32_t mask) {
  return a & mask; // whichever bits in mask are 0 are removed

}

uint32_t set(uint32_t a, uint32_t mask) {
  return a | mask; // whichever bits in mask are 1 are set
}

uint32_t toggle(uint32_t a, uint32_t mask) {
  return a ^ mask; // whichever bits in mask are 1 are toggled
}

//   a=       10101010101010101010100111111
//   mask=    00000000000000001111000000000
//   a&mask = 00000000000000001010000000000

bool allMaskedBitsSet(uint32_t a, uint32_t mask) {
  return (a & mask) == mask; // whichever bits in mask are 1 tested
}

bool anyMaskedBitsSet(uint32_t a, uint32_t mask) {
  return (a & mask) != 0; // whichever bits in mask are 1 tested
}


int main() {
  uint32_t a = 0x1234ABFD; // 0001 0010 0011 0100 1010 1011 1111 1101
                           //                     xxx
                           // 1111 1111 1111 1111 0001 1111 1111 1111
                           //=0001 0010 0011 0100 0000 1011 1111 1101 = 12340BFD
  cout << hex << clear(a, 0xFFFF1FFF) << endl;

  // 0001 0010 0011 0100 1010 1011 1111 1101
  //                xx         xx
  // 0000 0000 0000 1100 0000 0110 0000 0000 = 123CAFFD                           
  cout << hex << set(a, 0x000C0600) << endl;


  // 0001 0010 0011 0100 1010 1011 1111 1101
  //                x               xxx xxxx
  // 0000 0000 0000 1000 0000 0000 0111 1111 = 123CAB82                           
  cout << hex << toggle(a, 0x0008007F) << endl;
 int x = 5;

    for (int i = 0; i < 10; i++) {
        x = 5 - x;
     if (x == 0)
     x = 5;
    else
        x = 0;
    }
}