/*
	for any integer divided by 2 to n, shift right by n instead

	x = x / 4;  // instead write: x >>= 2   (which turns into lsr #2 on the ARM)

	For any integer multiplied by a power of 2, shift left by n instead

  x = x * 16; // instead write x <<= 4;


	to test for odd or even:

	if (x % 2 == 0) // even 

	if (x & 1 == 0) // even (use bitwise AND)      ANDS R1, R0, #1

	fast divide by 10 for small numbers
  (x * 102) >> 10


	nearest power of 2 bigger than n for 32 bits

	uint32_t powerof2m1(uint32_t n) {
	n--;
	n |= n >> 1;
	n |= n >> 2;
	n |= n >> 4;
	n |= n >> 8;
	n |= n >> 16;
	n++;
	return n;
	}

