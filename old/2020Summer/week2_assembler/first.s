        .global main
/*
  On ARMv6: 16 registers, each is 32 bits
  on ARMv8: 31 registers, each is 64 bits   x0..x30   AARCH64
  r0, r1, r2 ... r15

  r15 = PC (Program Counter)
  r14 = SP (Stack Pointer)
  r13 = LR (Link Register, used for faster function calls)


 */

main: /* your assembler code goes here! */

// the mov instruction is limited to 0 to 255 (one byte, 8 bits)
//  0xDDDDDDDD schematic of a 32-bit number
//    MMMMMrvv
      mov  r0, #5  @ r0 = 5 note direction, right to left
      mov  r1, #92 @ r1 = 92
      mov  r2, #0x0f @ r2 = 0f in HEX (15)


// the ldr instruction can load an entire register (all 32 bits) this is slower
// 0xDDDDDDDD
//   LLLLLaaa   the address specifies where to find the number
      ldr r0, =0xFF123456
      

      str r0, .x






.word:  0
.word:  FF123456








      // return
      bx  lr    @funky name for return on the ARM!   PC <-- LR  Branch and eXchange