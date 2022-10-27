	// identify what is in each register
	.global main

	// SP=7FFFFFC080
main:
0x5555507C8:	mov x0, #3 // x0=_______ pc=___________
0x5555507CC:	mov x0, #3 // x0=_______ pc=___________
0x555550780:	mov x1, #4
0x555550784:	stp lr, x0,[sp, #-16]! // SP=__________
0x555550788:	bl  f  (0x555550794)// lr=_________ pc=________
0x55555078c:    ldr lr, x0, [sp], #16 // sp=_________
0x555550790:	ret 
0x555550794:	add  x0, x0, x1
0x555550798:	stp lr, x0,[sp, #-16]! // sp=sp-16 write lr, x0
0x55555079C:    bl  g (0x5555507A8)// lr=_________ pc=________
0x5555507A0:    ldr lr, x0, [sp], #16 // lr=______
0x5555507A4:	ret//pc=_________
0x5555507A8:	add x4, x5, x6
0x5555507AC:	ret//pc=_________

		
//		ldr	x3, [x0], #8 // x3= load[x0], x0=x0+8, pc=
