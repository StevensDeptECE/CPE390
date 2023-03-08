    .globl  main

main:

    mov $1, %rax                # rax = 1
    #
    # arithmetic
    #
    add  %rax, %rbx              # rbx = rbx + rax
    sub  %rax, %rbx              # rbx = rbx - rax
    imul %rax, %rbx             # rbx = rbx * rax (signed?)
    div  %rcx                   # rax = rdx:rax / rcx      rdx = mod???
    lea (%rax, %rbx), %rcx      # rcx = rax + rbx
    lea $16(%rax, %rbx, 8), %rcx # rcx = 16+rax + rbx*8


    # Boolean Operations
    and  %rbx, %rsi             # rsi = rsi AND rbx = rsi & rbx
    or  %rbx, %rsi             # rsi = rsi OR rbx (inclusive OR) = rbx | rsi
    not %rbx                    # rbx = NOT rbx                         ~x
    xor %rax, %rax              # rax = rax XOR rax (which is zero) = rax ^ rax
    
    # Bit Shifting
    
    # unsigned bit shift
    shl   $5, %rsi      # %rsi <<= 5 (multiply by 2 to 5 = 32)  uint64_t x = 4;    x <<= 3;
    shr   $3, %rdi      # %rdi >>= 3 (divide by 2 to 3 = 8)
    shl   %rax, %rsi      # rsi <<= %rax



    # signed bit shift
    sal   $1, %rsi      # signed shift left     
    sar   $2, %rdi      # rdi = rdi >> 2 (signed)
    # signed shift preserves the sign bit

    # rotate
    rol   $4, %rax      # rotate left by 4 bits
    ror   $3, %rbx      # rotate rbx right by 3 bits

    mov $17, %ax       #0000000000010001
    ror $4,  %ax       #0001000000000001
    mov $17, %ax       #0000000000010001
    shr $4, %ax        #0000000000000001

    #branching

    mov $100, %rcx
loop:
    # do this 100 times
    sub  $1, %rcx
    jnz  loop

    cmp  $100, %rax    # compute rax-100
    # jz     # rax == 100
    # jnz    # rax != 100
    # jl     # rax < 100
    # jge    # rax >= 100     


    cmp $3, %rcx
    jge  else
    # this is the then part of the if statement

    j endif
else:   
    # this is the else code
    # if you don't have the jump above, you will be here

endif:

    # tst is NOT on test1!
    tst  %rbx, %rax   # compute rax AND rbx

    tst  $1, %rax     # RAX AND 1
    jz   even         #RAX AND 1 == 0
    jnz  odd          #RAX AND 1 != 0


    push %rsi       # rsp = rsp - 8, mov %rsi, (%rsp)
    mov  $9, %rsi   # rsi=9
    pop  %rsi       # mov (%rsp), %rsi  rsp=rsp+8
    
    


















