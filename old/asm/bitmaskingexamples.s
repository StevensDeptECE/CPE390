	@ r0 = 0000000000001001
	@
	@
	@
	@0000000000001001
	@0000000000011001
	mov 	r2, #1
	lsl	r2, #4
	orr	r0, r0, r2 @ set the 1 bit 1xxxx



	@ to clear the bit
	mov	r2, #1
	lsl	r2, #4
	mvn	r2,r2	@r2 = 11111111101111
	and	r0, r0, r2   @ mask out the bit (zero now)

	@ clear (but more efficient)
	mov	r2, #1
	lsl	r2, #4
	bic	r0, r0, r2   @ mask out the bit (zero now)


	@ eratosthenes hints
	@ first set all bits to 1 (everyone is prime
	@ DUMB, Brute force: set each bit to 1
	@ 0x00000000 0x00000001 0x00000003 0x00000007
	@
	@ 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF
	@ 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
	@ 1 1 0 1 0 1 0 1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0
	@ example i = 3
	@ if isPRime(i) USE THE TST instruction
	@ 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
	@ 1 1 0 1 0 1 0 0  0  1  0  1  0  0 0   1  0  1  0  0  0  1  0  1  0
	@ for j = i*i		; j <= n; j += 2i)
	


	
	mov	r2, #3
	cmp	r2, #4
	movlt	r3, #0
