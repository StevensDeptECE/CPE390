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
loop:
  movb $0, (%rcx)  # equivalent to x[i] = 0 if x is an array of char...
  add  $1, %rcx
  cmp  %rdx, %rcx
  jl   loop
  add  $32, %rsp
  ret
