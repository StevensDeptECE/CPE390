	.globl main
main:
	mov $52, %rax #  32+16 + 4 = 00110100  0x34
	mov $37, %rbx #  32 + 4 + 1  00100101  0x25
	#                            ========
                                          	
      	mov %rbx, %rcx
	and %rax, %rcx #             00100100 = 0x24  C++: x & y

      	mov %rbx, %rdx
	or  %rax, %rdx #             00110101 = 0x35  c++: x | y

      	mov %rbx, %rsi
	xor %rax, %rsi #             00010001 = 0x11  c++: x ^ y

	not %rsi		     11101110 = 0xEE  c++: ~x

	#0x2B | ~0x2B == 0xFF
	#00101011
	#11010100
	#========
	#111111111

	mov $0xDEADBEEF, %rdx
	and $0xFACEFEED, %rdx  # rdx = _____________
	ret

	# x + 0 == x
        # x * 0 = 0
	# x * 1 = x

	xor   %rax, %rax  # rax = 0
	# suppose register rbx = 10101010101001010101xxx
	# make all the x bits 0
	mov $0xFFFFFFFFFFFFFFFF, %rdi
	and %rdi, $rbx  # rbx does not change
	mov $0xFFFFFFFFFFFFFFF8, %rdi    last 3 digits are 000
	       1111 1111 1111 1000   
	and %rdi, $rbx  # rbx now has last 3 digits 0

	# suppose register rbx = 10 1010 10xx 100x x010 1xxx
        #      and with	                 1100 1110 0111 1000

	# make all the x bits 0
	mov $0xFFFFFFFFFFFFCE78, rdi
	and %rdi, %rbx

	# suppose register rbx = 10 1010 10xx 100x x010 1xxx
	# set all bits marked x to 1
        #      OR with	                 0011 0001 1000 0111
	#                                  3   1    8    7
	mov $0x0000000000003187, rdi
	or  %rdi, %rbx

	
