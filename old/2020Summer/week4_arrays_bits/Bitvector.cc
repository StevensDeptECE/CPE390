#include <iostream>
using namespace std;

bool bittest(const uint32_t* p, uint32_t len) {
	return false;
}

void bitset(uint32_t* bits, uint32_t pos) {
	// 0..31 (1st elements of bits)
  // 32..63 (2nd elements of bits)
	// 64..95 (3rd elements of bits)
	// pos / 32 ==   pos >> 5   2*2*2*2*2

	//          01010101010101010101001101111010110
	//          00000000000000000000010000000000000 OR
	//          00000000000000000000000000000000001
	// then left shift into the correct position
	//          10000000000000000000000000000000000  0x80000000
	bits[pos/32] = bits[pos/32] | (1 << (pos % 32));
	//	bits[pos >> 5] | (1 << (pos & 0x1F));
	

	/*
		 64 % 32 == 0 ..31

     00000
     00001
     00010
     ...
     11111

	 */

}

//          00000000 00000000 00000000 00000001
//          00000000 00000000 00001000 00000000
//          11111111 11111111 11110111 11111111  AND with NOT

void bitclear(uint32_t* bits, uint32_t pos) {
	bits[pos/32] = bits[pos/32]  & ~(1 << (pos % 32));
}

/*
in ARM assembler you can use BIC (bit clear) which is AND NOT
   r0 = address of the array
   suppose r1 = pos
   lsr   r2, r1, #5
   lsl   r2, #2
   add   r2, r0, r2
   ldr   r3, [r2]
   mov   r2, #31  @ 0x1F
   and   r2, r1, r2 @ now r2 = rightmost 5 bits of r1
   mov   r0, #1
   lsl   r0, r2
   bic   r3, r0
   str   r3, [r2]
   bx    lr

   r2 = 8
   r0 = 100000000 (256)

   000000101010101010111110011010
   000000000001010101010101111100
   000000000101010101010111110000

   000000000101010101010111110011

 */
void printBits(const uint32_t* p, uint32_t len) {
	for (uint32_t i = 0; i < len; i++) {
		uint32_t v = p[i];
		for (int i = 31; i >= 0; i--)
			cout << ((v >> i) & 1);
	}
}


int main() {
	uint32_t* p = new uint32_t[1000000]; // calls malloc() data is on the heap
	bitset(p, 21); // pos/32 = 0    pos % 32 = 21
	//  00000000 00000000 00000000 00000001
	//  00000000 00100000 00000000 00000000
	// 0x00200000
	bitset(p, 31); // pos/32 = 0    pos % 32 = 31
	// 0x80200000
	bitset(p, 64); // pos/32 = 2    pos%32 = 0
	//  00000000 00000000 00000000 00000001
	// 0x00000001
	
	for (int i = 0; i < 100; i++)
		bitset(p, i);
	printBits(p, 10);

	if (bittest(p, 27)) {
		cout << "yes\n";
	}
	if (bittest(p, 127)) {
		cout << "yes\n";
	}
	
	for (int i = 0; i < 100; i++) {
		bitclear(p, i);
		printBits(p, 10);
	}

	delete [] p;
}
