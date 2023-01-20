#include <iostream>
using namespace std;

uint64_t add(uint64_t a, uint64_t b) {
	return a + b;
}
/*
		.globl	_Z3addyy
_Z3addyy:
	leaq	(%rcx,%rdx), %rax
	ret
*/

uint64_t sub(uint64_t a, uint64_t b) {
	return a - b;
}
/*
	.globl	_Z3subyy
_Z3subyy:
	movq	%rcx, %rax // rax = a
	subq	%rdx, %rax // rax = a-b
	ret
*/

//                   rcx          rdx
uint64_t prod(uint64_t a, uint64_t b) {
	uint64_t p = 1;
	for (uint64_t i = a; i <= b; i++)
		p *= i;
	return p;
}
/*
	.globl	_Z4prodyy
_Z4prodyy:
	movl	$1,   %eax  // p = 1
	cmpq	%rcx, %rdx  // if a > b...
	jb	.L5           // skip everything
.L7:                // if you are here a <= b
	imulq	%rcx, %rax  // prod = 1*a
	addq	$1,   %rcx  // a++
	cmpq	%rcx, %rdx  // is a <= b?
	jnb	.L7           // go back and do it again
.L5:
	ret
 */
//                   rcx         rdx
uint64_t max(uint64_t a, uint64_t b) {
	if (a > b)
		return a;
	return b;
}
/*
	.globl	_Z3maxyy
_Z3maxyy:
  cmpq	%rdx, %rcx    // compare a and b
	movq	%rdx, %rax    // rax = b
	cmovnb	%rcx, %rax  // if a was bigger, rax = a
	ret
*/
//  01010100010101010101010101010101001
// mov %rdx, %r9
// andq  $1,   %r9 // r9 rightmost bit = 1
// cmpq $0, $r9
// jg ...

// tstq $1, %rdx
// jg ...
// addq $3, %rdi	...
uint64_t complicated(uint64_t a, uint64_t b, uint64_t c, uint64_t d) {
	if (b % 2 != 1) 
		d += 3;
	if (c % 4 == 2)
		a -= 4;
	return (a * (b + 1) + c * d * (b - 3)) * (a + 2);
}


// 5 parameters (when does intel run out?)
uint64_t spice5(uint64_t v, uint64_t w, uint64_t x, uint64_t y, uint64_t z) {
	return v + w + x + y + z;
}
uint64_t g(int a, int b, int c) {
  uint64_t x = a + b + c;
  uint64_t y = -a -b - c;
  uint64_t z = a*b + b*c + a*c;
  return x + y + z;
}

uint64_t f(int a) {
  int b = a + 3;
  int c = b * b;
  return g(a, b, c);
}