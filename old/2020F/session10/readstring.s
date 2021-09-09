	.global _Z12add1ToStringPc

_Z12add1ToStringPc:
1:	
	ldrb	r1, [r0] @load the byte at memory location r0 0x000000FF
	cmp	r1, #0
	beq	2f
	add	r1, #1
	strb	r1, [r0]
	add	r0, #1
        b	1b
2:
	bx	lr

@	ldr	r0,=s

s:	.asciz	"test123"   @  ^@ is the null character (control-@)
	@        uftu234
