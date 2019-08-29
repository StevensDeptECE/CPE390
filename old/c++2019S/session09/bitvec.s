	.global _Z3setPji
	@ set(bits, 100)
_Z3setPji:
	@ R0 = address of the bits array
	@ R1 = position to set
	push {R2, R3, R4, R5}
	
	MOV	R2, R1
	LSR	R2, #3		@pos/32 (in words, so really pos/8
	ADD	R3, R0, R2  @ bits[pos/32]
	LDR	R4, [R3]
	MOV	R5, #1
	AND	R1, #0x1F
	LSL	R5, R1		@ r5 is 1 shift left by bit pos 10000000
	OR	R4, R5
	STR	R4, [R3]	@ write back to memory
	
	pop {R2, R3, R4, R5}
	BX LR
