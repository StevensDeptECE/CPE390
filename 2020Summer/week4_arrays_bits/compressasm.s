/*

uint32_t compress(uint32_t a[], int len) {
  uint32_t out = 0;
  for (int i = 0; i < len; i++) {
    out = (out << 2) | a[i];
  }
  return out;
}
*/

        .global _Z8compressPji
_Z8compressPji:
        @ r0 = the array
        @ r1 = the length
        mov     r2, #0
1:
        lsl     r2, #2
        ldr     r3, [r0]
        add     r0, #4
        orr     r2, r3
        sub     r1, #1
        cmp     r1, #0
        bgt     1b
        mov     r0, r2
        bx      lr

        .global _Z14fastercompressPji
_Z8compressPji:
        @ r0 = the array
        @ r1 = the length
        mov     r2, #0
1:
        lsl     r2, #2
        ldr     r3, [r0]
        add     r0, #4
        orr     r2, r3
        subs    r1, #1       @ V = OVERFLOW  N = NEGATIVE Z = ZERO
@        cmp     r1, #0      @compare is intrinsically r1-#0 and set flags
        bgt     1b
        mov     r0, r2
        bx      lr

        .global _Z15fastestcompressPji
_Z8compressPji:
        @ r0 = the array
        @ r1 = the length
        mov     r2, #0
1:
        lsl     r2, #2
        ldr     r3, #4, [r0]
        orr     r2, r3
        subs    r1, #1       @ V = OVERFLOW  N = NEGATIVE Z = ZERO
        bgt     1b
        mov     r0, r2
        bx      lr



