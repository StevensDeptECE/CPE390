void setBit(int x[], int n, int pos) {
	//problem: split pos into which word, and which bit in that word

	// pos = 0     x[0] |= 0x00000001
	// pos = 1     x[0] |= 0x00000002
	// pos = 2     x[0] |= 0x00000004
	// pos = 31    x[0] |= 0x80000000
	// pos = 32    x[1] |= 0x00000001
  // pos = 63    x[1]
	// pos = 65    x[2]
	//x[pos / 32] x[pos >> 5] |=

	// index = pos / 32 = pos >> 5
	// load x[index]
	// OR       1 <<  (pos % 32)  -->   1 << (pos AND 31)

	// n mod 2^k    m & (k-1)

}
void setBit(int x[], int pos) {
	//	x[pos >> 5] = x[pos >> 5] | (1 << (pos & 31));
	x[pos >> 5] |=  (1 << (pos & 31));
}



  // to clear,

	// AND NOT (1 << (pos % 32))
	// x[pos >> 5] &= 1 << (pos & 31)

void clearBit(int x[], int pos) {
	x[pos >> 5] &=  ~(1 << (pos & 31)); // on the arm you should use BIC
}

bool isTrue(int x[], int pos) {
	return x[pos >> 5] &  (1 << (pos & 31)); // zero means false, nonzero mean true
}

// ands will set the flags but it changes the number
// tst r5, r6   does an and, sets flags but does NOT change any register (just like cmp)


