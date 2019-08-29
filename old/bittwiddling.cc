/*
	for any integer divided by 2 to n, shift right by n instead

	x = x / 4;  // instead write: x >>= 2   (which turns into lsr #2 on the ARM)

	For any integer multiplied by a power of 2, shift left by n instead

  x = x * 16; // instead write x <<= 4;


	to test for odd or even:

	if (x % 2 == 0) // even 

	if (x & 1 == 0) // even (use bitwise AND)      ANDS R1, R0, #1
	                                               TST  R0, #1
																								 BNZ  odd
																								 
																								 


	fast divide by 10 for small numbers  / 1024
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

13     -->  16

1101

1100
0110
OR
1110
0011
OR
 1111
 +  1
 ====
10000

1000000100100000000
01000000100100000000
11000000000000000000
0011000000000000000000
1111

int n = 5;

if (n == 5)
  n = 0;
else
  n = 5;

n = n ^ 5; //XOR 
n = 5 - n;
101
101
===
000
101
101


R0 = some int             1xxxxxxxxxxxxxxxxxxxxxxx (negative)
R1 = some int             0xxxxxxxxxxxxxxxxxxxxxxx (positive)
test whether they are DIFFERENT signs

    EORS    R2, R0, R1
    BLT
		
R0 = 101010100111111111111110000000000000

count 1 bits
/*
     mov r3, #0      @ r3 will count how many 1 bits
     mov r1, #1      @ r0 = 11111000
.loop:
		 ands r2, r0, r1  @ r1 = 00000001
		                 @ r2 = 00000000
     addnz r3, #1
		 lsl   r1, #1
		 cmp   r1, r0
		 blt   .loop

		 mov    r3, #0
		 mov    r1, r0
.loop:
		 tst    r1, #1
		 addnz  r3, #1
		 lsr    r1, #1
		 bnz    .loop
