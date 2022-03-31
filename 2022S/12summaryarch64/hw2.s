	// identify what is in each register
	.global main
main:	
0x555550750:	mov x0, #3
0x555550754:	mov x1, #4
0x555550758:	stp lr, x0,[sp, #-16]!
0x55555075C:	bl  f  (0x555550764)
0x555550760:    ldr lr, x0, [sp], #16
0x555550764:	ret
0x555550768:	add  x0, x0, x1 // lr=_________
0x55555076C:	ret	//pc=_________
	
	
