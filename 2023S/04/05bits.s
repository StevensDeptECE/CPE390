.globl main

main:

	mov	$0x2B, %rcx
	mov $0xF3, %rdx
	and %rcx, %rdx
	or %rcx, %rdx
	xor %rcx, %rdx
	not %rdx

	shr $1, %rdx
	shl $5, %rdx

	mov $23, %rsi  #  000000000000000000000 ... 00000010111
	ror $3,  %rsi  #  111000000000000000000 ... 00000000010
    rol $5,  %rsi  #
    mov $24, %rdx  
    rol %rdx, %rsi # masking in a nutshell ~(1 << n) where n is the bit number to remove


