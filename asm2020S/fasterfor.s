	.arch armv6

main:
	.fnstart
.LFB1480:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8
	add	r1, sp, #4
	ldr	r0, .L15
	bl	_ZNSirsERi
	ldr	r5, [sp, #4] @ n (whatever I type)
	cmp	r5, #0
	ble     .L12
	mov	r4, #0
	ldr	r6, .L15+4
.L13:
	mov	r1, r4
	mov	r0, r6
	add	r4, r4, #1
	bl	_ZNSolsEi
	cmp	r4, r5      @r4-r5
	blt	.L13        @if N=1, meaning r4-r5 < 0 meaning if r4 < r5
.L12:
