count1:
	mov r0, #0
loop:
	add r0, r0, #1 //can say add r0, #1 will generate same line
	cmp r0, #10
	blt loop
	bx  lr
count2:

	mov	r0, #0
	ldr	r1, =0xFFFFFF // takes 2 words
//	ldr	r2, =0x3a	// this is slow, don't do it if the number is small enough to use mov
//	mov	r2, #0x3a         //this is better
loop2:	
	add r0, #1
	cmp r0, r1
	blt loop2
	bx  lr

// r0 = number of times to count
count3:
	mov r1, #0
	cmp r0, #0
	beq 2f
1:
	add r1, #1
	cmp r1, r0
	blt 1b
2:
	bx  lr

// r0 = number of times to count
count4:
        mov r1, #0
 	b 2f
1:
        add r1, #1
2:
        cmp r1, r0
        blt 1b                                                                                                                
        bx  lr         
//r0 = n return sum 1..n
sum1:
	mov r1, #1 // loop index
	mov r2, #0 // sum = r2
	b   2f
1:
	add r2, r1 // sum = sum + r1 (add each number)
	add r1, #1 // count up
2:	
	cmp  r1, r0                   // for (int i = 1; i <= n; i++)
	ble 1b
	// return the answer
	
	mov r0, r2
	bx  lr

	.global main
main:
	push	{lr}
	mov	r0, #5
	bl sum1
	pop	{lr}
	bx lr

