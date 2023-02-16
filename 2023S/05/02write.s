.globl _Z4zeroPjj

//   rcx points to array
//   edx = length 
_Z4zeroPjj:
    xor  %rdi,%rdi  # rdi = 0
loop:
    mov  %edi, (%rcx)  # write a zero to each element of the array
    add  $4, %rcx
    sub  $1, %edx
    cmp  $0, %edx
    jne  loop
    ret