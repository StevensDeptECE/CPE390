	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Complex.cc"
	.text
	.align	2
	.global	_ZplRK7ComplexS1_
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZplRK7ComplexS1_, %function
_ZplRK7ComplexS1_:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.64	d1, [r0, #8] @d1 = a.i
	vldr.64	d6, [r1, #8] @d6 = b.i
	vldr.64	d0, [r0]     @d0 = a.r
	vldr.64	d7, [r1]     @d7 = a.i
	vadd.f64	d1, d1, d6
	vadd.f64	d0, d0, d7
	bx	lr
	.cantunwind
	.fnend
	.size	_ZplRK7ComplexS1_, .-_ZplRK7ComplexS1_
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits

	@r0 = points at object a
	@r1 = points at object b
// do the math, return answers in d0,d1
	.global _ZmiRK7ComplexS1_
_ZmiRK7ComplexS1_:
  	vldr.64	 d0, [r0]
	vldr.64	 d1, [r0, #8]
	vldr.64	 d2, [r1]
   	vldr.64	 d3, [r1, #8]
	vsub.f64 d0, d2
	vsub.f64 d1, d3
	bx	lr
	
	@r0 = points at object a
	@r1 = points at object b
// do the math, return answers in d0,d1
	.global _ZmlRK7ComplexS1_
_ZmlRK7ComplexS1_:
  	vldr.64	 d4, [r0]
	vldr.64	 d5, [r0, #8]
	vldr.64	 d2, [r1]
   	vldr.64	 d3, [r1, #8]

	// (a+bi) *(c+di) = (ac-bd,   ad+bc)
	vmul.f64 d0, d4, d2 @d0 = d4*d2 = ac
//	vmul.f64 d1, d5, d3 @d1 = d5*d3 = bd
//	vsub.f64 d0, d5		@d0 = ac-bd
	vmls.f64 d0, d5, d3 @d0 = d0 -d5*d3 = ac-bd	
	vmul.f64 d1, d4, d3 @d1 = ad
	vmla.f64 d1, d5, d2 @d1 = d1 + bc
        bx	lr




	
