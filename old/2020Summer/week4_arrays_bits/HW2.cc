/*
 clear all the bits in an array up to numBits.
 Do not do this 1 bit at a time (slow). Do it a word at a time.
*/
void clearAll(uint32_t bits[], uint32_t numBits);

//  make bit number pos in the array 1
void set(uint32_t bits[], uint32_t pos);

//  make bit number pos in the array 0
void clear(uint32_t bits[], uint32_t pos);

// test should return true (1) if the bit is set, and false (0) if it is clear
bool test(uint32_t bits[], uint32_t pos);

// if the bit is 1 make it 0. If it is 0 make it 1 (toggle)
bool toggle(uint32_t bits[], uint32_t pos);

/*
  we provided print for you, but make sure you understand it
*/
void printBinary(uint32_t w) {
  for (uint32_t i = 0, mask = 1 << 31; i < 32; i++, mask >>= 1)
    cout << (w & mask) ? '1' : '0'; // if bit is true, print 1 otherwise print 0
}

void print(const uint32_t bits[], uint32_t numBits) {
  uint32_t numWords = (numBits + 31) / 32;
  for (int i = 0; i < numWords; i++) {
    printBinary(bits[i]);
  }
}
    

int main() {
  constexpr uint32_t BITMAP_SIZE = 5000;
  uint32_t bits[(BITMAP_SIZE + 31) / 32]; // preallocate enough room for 3200 bits
  clearAll(bits, BITMAP_SIZE); // clear each word, do not clear each bit separately!
  set(bits, 100); // set the 100th bit (word 3, bit 4)
  set(bits, 0);   // set the 0th bit (word 0, bit 0)
  set(bits, 31);  // set the 31st bit (word 0, bit 31)
  set(bits, 32);  // set the 32nd bit (word 1, bit 0)
  for (int i = 40; i < 90; i+=2)
    set(bits, i);
  print(bits, 128); // print the first 128 bits
  
}
