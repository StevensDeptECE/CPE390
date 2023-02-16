 		.globl main
# write a loop that counts from 0 to 1 billion-1
loop1:
        mov  $0, %rax
        mov  $8000000000, %rcx
loop1a:
        add  $1, %rax

        cmpq  %rcx, %rax # rax-1 billion
        # Z=1 S=0  C= O=
        # zero, sign, carry, overflow
		# Only need to know 'Z' and 'S'
        jne  loop1a

		ret

# write a loop that counts from 1 billion down to 0
loop2:
        mov $1000000000, %rcx
loop2a:
        sub $1, %rcx
#        cmp $0, %rcx
        jnz  loop2a    # jne   jg jgt
		ret

f:
    add %rcx, %rcx  # rcx = 2rcx (we are allowed)
    mov %rcx, %rax
    ret


# write a loop that calls function f(i)
# for i = 1 to 100
loop3:
#        sub $8, %rsp
        mov  $1, %rcx
loop3a:
 #       mov  %rcx, (%rsp) # save to stack
        push %rcx  # save to stack
        call f
        pop  %rcx  # restore from stack
 #       mov  (%rsp), %rcx # restore from stack
        add  $1, %rcx
        cmp  $100, %rcx
        jle  loop3a
 #       add $8, %rsp
		ret

loop4:
        push %r10
        mov  $1, %r10
loop4a:
        call f
        add  $1, %r10
        cmp  $100, %r10
        jle  loop4a
        pop  %r10
		ret



main:
	call	loop1
#       call	loop2
#       call    loop3
#       call    loop4
		ret
