	.globl main
main:
	mov $16, %rax
	sub $256, %rsp
	mov %rax, (%rsp) # write to whereever the stack pointer points
	sub $1, %rax
	mov %rax, 8(%rsp) # write to mem[rsp + 8]
	mov $2, %rsi
	mov $6, %rdi      # end index
	mov %rax, 8(%rsp, %
