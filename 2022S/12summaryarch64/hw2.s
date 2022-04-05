	// identify what is in each register
	.global main
main:
0x555550750:	mov x0, #3 // x0=_______ pc=754___________
0x555550754:	mov x1, #4
0x555550758:	stp lr, x0,[sp, #-16]!
0x55555075C:	bl  f  (0x555550768)// lr=760_________ pc=768________
0x555550760:    ldr lr, x0, [sp], #16
0x555550764:	ret 
0x555550768:	add  x0, x0, x1
0x55555076C:	stp lr, x0,[sp, #-16]!
0x555550770:    bl  g (0x55555077C)// lr=774_________ pc=77c
0x555550774:    ldr lr, x0, [sp], #16 // lr=760______
0x555550778:	ret//pc=760_________
0x55555077C:	add x4, x5, x6
0x555550780:	ret//pc=774_________

		
//		ldr	x3, [x0], #8 // x3= load[x0], x0=x0+8, pc=
