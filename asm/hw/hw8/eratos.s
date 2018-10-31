	.globl _Z12eratosthenesk
_Z12eratosthenesk:
	movl	#3, %r11	
.L1:
	movl	%r11, %r10
	and	#$3F, %r10
	movl	%rll, %r9
	lsr	#6, %r9
	movl	(%ecx,%r9), %r8
	lsll	%r10, ????
	add	#2, %r11
	cmp	%r11, %edx
	jlt	.L1
