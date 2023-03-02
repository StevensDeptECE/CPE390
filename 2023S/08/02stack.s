  .globl main

main:
  call f
  #does the next instruction
  mov  $13, %rdi
  xor %rax, %rax
  ret

#
# rsp+32  NOT MINE! This is the return address
# rsp+24  w w w w w w w w
# rsp+16  z z z z z z z z
# rsp+8   y y y y y y y y
# rsp --> 0 0 0 x x x x x
f:
  mov  %rsp, %rdx  # rdx is pointing just beyond the end of the array of 32 bytes
  sub  $32, %rsp
  mov  %rsp, %rcx  # rcx is pointing to our "array" of 32 bytes

  # let's first write 0 to each byte in the 32-bytes allocated
loop:
  movb $0, (%rcx)  # equivalent to x[i] = 0 if x is an array of char...
  add  $1, %rcx
  cmp  %rdx, %rcx
  jl   loop

  # this is faster, in only 4 times we can write all 32 bytes
  mov  %rsp, %rcx   # start back at the beginning again!
loop2:
  movq $5, (%rcx)   # 0x0000000000000005
  add  $8, %rcx  
  cmp  %rdx, %rcx
  jl   loop2



  add  $32, %rsp
  ret
