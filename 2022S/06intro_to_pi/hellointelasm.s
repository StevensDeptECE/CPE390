	.globl main // export this symbol
main:
	movq $0, %rax
	xorq %rax, %rax // fastest way to set = 0
	movq $7, %rbx
	movq $255, %rsi

	movq $1, %r9
	movq $1, %r10
	movq $1, %r11
	
	ret
