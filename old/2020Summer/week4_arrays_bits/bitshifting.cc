/*
	AND         a & b     and   r0, r0, r1   @r0 = r0 AND r1
	OR          a | b     orr   r0, r0, r1   @r0 = r0 OR r1
	XOR         a ^ b     eor   r0, r1, r2   @r0 = r1 XOR r2
	NOT         ~a        mvn   r0, r1       @r0 = NOT r1
  AND NOT     a & ~b    bic   r0, r1       @r0 = r0 AND (NOT r1)

  shift left  a << b    lsl   r0, #3      (shift by 0 to 31)
                        lsl   r0, r1
  shift right a >> b    lsr   r0, #5
                        lsr   r0, r1
  which shift you do in C/C++ depends on the type of the operand
  In Java, there are only signed variables, so they provide unsigned
  operator <<<  >>>
  logical shifting right (unsigned) equivalent to divide by 2 for each shift
      10101111010010101010111101001abc
      010101111010010101010111101001ab
      0010101111010010101010111101001a
  logical shifting left (unsigned) equivalent to multiple by 2 for each shift
      10101111010010101010111101001abc
      0101111010010101010111101001abc0
      101111010010101010111101001abc00
  arithmetic shifting right (signed)
      00000000000000000000000000000011 = 3
      00000000000000000000000000000001 = 1
      11111111111111111111111111111110 = -2 replicates
      11111111111111111111111111111111 = -1 it works!
      00000000000000000000000000000000 = 0??? great question, let's check
  arithmetic shifting left (signed)
      11111111111111111111111111111111 = -1
      11111111111111111111111111111110 = -2
			...
      11000000000000000000000000000000 = -BIG (about 1.1 billion)
      10000000000000000000000000000000 = -BIG (about 2.2 billion)
			00000000000000000000000000000000 = 0 (overflow)


  rotation (suppose, rotate right)
      10101111010010101010111101001abc
      c10101111010010101010111101001ab
      bc10101111010010101010111101001a
      abc10101111010010101010111101001

		 ror r0, n  == rol r0, (32-n) so ARM only provides one of them
 */


/*
  given an array of integers from 0 to 3
  with length len, pack into a single int and return
  len <= 16
  a = {2, 1, 0, 3, 2, 3, 3, 1}
 */
uint32_t compress(uint32_t a[], int len) {
	uint32_t out = 0;
	for (int i = 0; i < len; i++) {
		out = (out << 2) | a[i];
		//		out <<= 2;  // out = out << 2
		//		out += a[i];                    // first time 1001001100
	}
	return out;
}

/*
	compress 2-bit numbers in src, store 16 at a time into a number
	write into dest
 */
void compress(uint32_t dest[], const uint32_t src[], uint32_t len) {
  for (int i = 0, k = 0; i < len; i+= 16, k++) {
		uint32_t pack = 0;
		for (int j = i; j < min(i+16, len); j++) // note the edge case
			// the last one could have fewer than 16
			pack = (pack << 2) | src[j];
		dest[k] = pack;
	}
}

/*
	compress 3-bit numbers in src, store 10 at a time into a number
	write into dest

	000 001 101 110 111 010 ...
 */
void compress3(uint32_t dest[], const uint32_t src[], uint32_t len) {
  for (int i = 0, k = 0; i < len; i+= 10, k++) {
		uint32_t pack = 0;
		for (int j = i; j < min(i+10, len); j++) // note the edge case
			// the last one could have fewer than 16
			pack = (pack << 3) | src[j];
		dest[k] = pack;
	}
}

/*
  suppose we want to store numbers from 0 to 13.
  How tightly can we compress?
  0000
  0001
  0010
  ...
  1000
  1001
  1010
  1011
  1100
  1101

  1110 (these are unused)
  1111

  arithmetic coding
    base = number of different "symbols"
   val = val * base + newValue


   0 to 13

   0, 11, 5, 4, 9, 13, 2, 2, 6, 8, ...

   val = val * 13 + 0
   val = val * 13 + 11
   val = val * 13 + 5
   ...
   instead of 8 groups of 4 bits, we could fit 9 groups
 */
