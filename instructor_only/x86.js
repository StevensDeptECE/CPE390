/*
  proposed simulator for x86 in JavaScript
  display all integer registers rax through r15

  see vectorized/fpfunctions.cc
  https://www.felixcloutier.com/x86/
  https://www.intel.com/content/www/us/en/developer/articles/technical/intel-avx-512-instructions.html
*/

const int rax = 0, rbx = 1, rcx = 2, rdx = 3, 
      rsi = 4, rdi = 5, rbp = 6, rsp = 7,
      r8 = 8, r9 = 9, r10 = 10, r11 = 11, r12 = 12, r13 = 13, r14 = 14, r15= 15;

      // define constants for all the xmm, ymm and zmm registers

const int xmm0 = 0; 
// these functions are all quad. Write other ones for 32 and 16 bit variant
function andq(regFrom, regTo) {

}

function orq(regFrom, regTo) {

}

function xorq(regFrom, regTo) {

}

function addq(regFrom, regTo) {

}

function subq(regFrom, regTo) {

}

function imulq(regFrom, regTo) {

}

// look up this one, it is not like the others!
function divq(regTo) {

}

// modern AVX instructions are all 3-operand
function vaddsd(a, b, c) {

}

function vsubsd(a, b, c) {
    
}

function vmulsd(a, b, c) {
    
}

function vdivsd(a, b, c) {
    
}