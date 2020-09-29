int main() {
	/*
		A  B   AND   NAND   OR    NOR   XOR
		0  0    0     1     0      1     0
		0  1    0     1     1      0     1
		1  0    0     1     1      0     1
    1  1    1     0     1      0     0

Read the notes on gates

	 */
	int a = 23;       // 0000000000000000000 0001 0111 = 0x00000017
	int b = 67;       // 0000000000000000000 0100 0011 = 0x00000043     ARM opcodes
	int c = a & b; //AND 0000000000000000000 0000 0011 = 0x00000003     and
	int d = a | b; // OR 0000000000000000000 0101 0111 = 0x00000057     orr
	int e = a ^ b; // XOR0000000000000000000 0101 0100 = 0x00000054     eor


	int f = 12521959;
	f ^= 12151; // XOR is its own inverse!!!
	f ^= 12151; // back to the original f
                    // 0000000000000000000 0001 0111 = 0x00000017
	int g = ~a; //NOT    1111111111111111111 1110 1000 = 0xFFFFFFE8     mvn r0, r1  @ r0 = NOT r1

	int h = 1 << 1;    // 0000000000000000000001                        lsl r0, #1
                     // 0000000000000000000010 = 2
	h <<= 1; // h = h << 10000000000000000000100 = 4
	// 12 add a zero 120 = one hundred twenty (multiply by 10)


	// 0000000000000000100000
	int i = 55 >> 2; // 110111 --> 1101 = 13                           lsr r0, #2
	int j = 55/ 8; // will turn into >> automatically today!


	//	int k = x % 8; // x & 7  --> mod 2**n = and  (2**n-1)
	int k = x & 7;

	@ rol or ror (I forget which one the ARM has)
		((x << 17) | (x >> 15)) == @rol r0, #17 == ror r0, #15
	
}

