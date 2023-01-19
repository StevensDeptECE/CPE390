	.globl main
main:
	leaq x, %rcx
	mov $3, %rdx
	mov %rdx, (%rcx)
	ret

x:	.word 256
