	.global _Z3sumPii
_Z3sumPii:
	push {r2, r3}	@ save registers	
	mov r3, #0		@ r3 <- 0

.l1:
	ldr r2, [r0]	@ load value pointed
					@ to by r0 into r2
					@ loads 32-bit int to r2
					@ r2 <- *r0

	add r3, r2, r3  @ r3 <- r2 + r3
	add r0, r0, #4	@ r0 <- r0 + #4
					@ r0 is location of '6'
					@ after addition points to '5'

	sub r1, r1, #1	@ r1 <- r1 - #1	
	cmp r1, #0		@ safely compare
	bgt .l1			@ if > 0, goto .l1

	mov r0, r3		@ r0 <- r3

	pop {r2, r3}	@ restore registers
	bx lr			@ return
