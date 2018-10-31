	.global	xyz

xyz:	.data 22 e3 f6

	.global f

f:
	LDR	R0, #1234
	LDR	R1, #0xFFA0
	ADD	R1,R0,R1	@ R1 = R0 + R1
	ADC	R1,R0,R1	@ R1 = R0 + R1 + c
	MUL	R1, #17
	LSL	R1, #3		@ R1 = R1 * 8 (2 to 3)
	ASL			@ ditto, but not responsible
	DIV	R1, R1,R0	@ R1 = R1 / R0
	DIV	R1, R0, R1	@ R1 = R0 / R1 on intel this isn't as simple

	@ how to compute n mod 2    n % 2 ==  0 or 1
	@ how to computer n mod 4
	AND	R1, #1		@ r1 = r1 MOD 2
	AND	R1, #3		@r1 = r1 mod 4

	@ to compute n mod (2tok)  AND with... ????
	@ mod 1024 = AND 1023
	@ mod 256 = AND 0xFF

	LDR	R0, #0xA0B1			1010
	LDR	R1, #0x5528			0101
	OR	R2, R0, R2	@ R2 = F5B9

	EOR	R2, R2		@ R2 = 0x00000000	0000 0000 0000 0000 0000 0000 0000 0000
	MVN	R3, R2		@ R3 = 0xFFFFFFFF	1111 1111 1111 1111 1111 1111 1111 1111

	@sp = 0xFFFF0000
	PUSH	{R3}		@ SP = FFFF0000-4 = FFFEFFFC     0 4 8 C
	@ FFFFFFFF      1111 1111
	@ FFFFFFFF	1111 1111
	@               1111 1110
	
	ADD	R3, R3, R3	@ -1 + -1 ==> -2
	POP	{R3}		@ R3 = 0xFFFFFFFF  SP = FFFF0000
	
	BX 	LR 		@ return from subroutine


	.global g
	.fnstart		@ don't know,you are not responsible (probably aligning to 4 byte)
g:
	PUSH	{R2}
	PUSH	{R3}
	LDR	R2, [R0]	@ load the memory location pointed to by R0 into R2
	LDR	R3, [R1]	@ load the memory location pointed to by R1 into R3
	ADD	R0, R2, R3	@ R0 = R2 + R3
	POP	R3
	POP	R2
	BX	LR
	

	@R0 --> a b c d
	@R1 --> a b c d
	
	LDR	R2, [R0, #12]	@ R2 = memory[R0+12]
	LDR	R3, [R1, #12]
	ADD ...



@////////////
	
	int x[] = {6, 5, 4, 3}		;  06 00 00 00  05 00 00 00 04 00 00 00
					  R0            R0		
	f(x, 4)
	// in assembler R0 will point to the memory location of x

	.global f
f:
	PUSH{R2}
	LDR	R2, #0
	ADD	R2, [R0]
	ADD	R0, R0, #4
	


	
