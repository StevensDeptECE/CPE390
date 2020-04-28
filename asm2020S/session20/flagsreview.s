	mov r0, #3
	@ flags not affected

	add r0, #2
	@ flags not affected

	subs r0, #5
	@r0 = 0, so Z = 1, N = 0
	subs r0, #3 @ r0 = -3
	@ Z = 0, N = 1

	mov r2, #3
	mov r1, #4
	cmp r1, #4 @
	@ computes r1 - #4 (0)
	@  Z = 1 N = 0
	@ gt = Z = 0 AND N=0
	@ lt = Z=0 AND N=1
	@ le = Z = 1 OR N=1
	@ ge = Z = 1 OR N=0
	addlt r2, #1 @ this does not
	addgt r2, #4 @ this does not
        addeq r2, #2 @ this happens
	@r2 = 5

	mov r0, #5
	mov r1, #16
	cmp r1, r0
	addgt r0, #1
	@r0 = 6
	
	ldr r0, =0xFFFFFFFF
	add r0, #1
	@r0 = 0x00000000

	ldr  r0, =0xFFFFFFFF
	adds r0, #1
	@C = 1


	
