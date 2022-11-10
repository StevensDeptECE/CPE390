#include <iostream>
#include <cmath>
#include <numbers>
#include "advanced.hh"
using namespace std;
using namespace std::numbers;
// passing in a single floating point value and returning a single answer
double f1a(double x) { return x*x*x; }
/*
	turns into:
	movapd	%xmm0, %xmm1  // xmm1 = xmm0
	mulsd	%xmm0, %xmm0    // xmm0 = xmm0 *xmm0
	mulsd	%xmm1, %xmm0    // xmm0 = xmm0 cubed
	ret
*/


// passing in 2 doubles and returning a single answer
double f1b(double x, double y) { return (x+y) * (x-y); }
/*
	.globl	_Z3f1bdd
_Z3f1bdd:
	movapd	%xmm0, %xmm2   // xmm2 = x (copy so you can wipe out xmm0)
	subsd	%xmm1, %xmm0     // (x-y)
	addsd	%xmm1, %xmm2     // xmm2 = (x+y)
	mulsd	%xmm2, %xmm0     // xmm0 = (x-y)*(x+y)
	ret
*/	

double f1c(double x, double y, double z) { return sqrt(x*x+y*y+z*z); }
/*
	.globl	_Z3f1cddd
_Z3f1cddd:
	mulsd	%xmm1, %xmm1  // y*y
	mulsd	%xmm0, %xmm0  // x*x
	mulsd	%xmm2, %xmm2  // z*z
	addsd	%xmm1, %xmm0  // x*x+y*y
	pxor	%xmm1, %xmm1  // xmm1=0
	addsd	%xmm2, %xmm0  // x*x+y*y+z*z
	ucomisd	%xmm0, %xmm1 // unsigned compare against zero? Why???
	ja	.L13             // so if (x*x+y*y+z*z > 0) what happens???
	sqrtsd	%xmm0, %xmm0 // sqrt(x*x+y*y+z*z)
	ret  // ok, so how can we make this one faster?
.L13:
	jmp	sqrt
*/

double f1d(double w, double x, double y, double z) {
	return sqrt(w*w + x*x + y*y + z*z);
}

// 5 parameters (when does intel run out?)
double f1e(double v, double w, double x, double y, double z) {
	return v + w + x + y + z;
}
/*
	when compiled with g++ -O2:
	
	.globl	_Z3f1eddddd
_Z3f1eddddd:
	addsd	%xmm1, %xmm0   //v+w
	addsd	%xmm2, %xmm0   //v+w+x
	addsd	%xmm3, %xmm0   //v+w+x+y
	addsd	40(%rsp), %xmm0 // fifth one is on the stack. calling convention is up to 4 in registers.
	ret

	when compiled with g++ -march=native -O2
	.globl	_Z3f1eddddd
_Z3f1eddddd:
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	40(%rsp), %xmm0, %xmm0
	ret
*/

/*
	pass by reference
	This is how you pass back more than one value.
  the following code computes the minimum, maximum and mean of an array
	It returns all 3 by reference.
 */
void stats(const int a[], int len, double& mean, int& min, int& max) {
	double sum = a[0]; // there better be at least one element!
	min = a[0]; // so far, smallest number is in a[0]
	max = a[0]; // biggest number too
	
 	for (int i = 1; i < len; i++) {
		sum += a[i];
		if (a[i] < min)
			min = a[i];
		else if (a[i] > max)
			max = a[i];
	}
	mean = sum/len;
}

/*
_Z5statsPKiiRdRiS2_:
	movl	(%rcx), %eax  // eax = a[0]
	movq	40(%rsp), %r8 // r8 = location of min in the caller
	movl	%eax, (%r9)   // how was r9 set? This is a mystery to me
	movl	%eax, (%r8)   // the memory you passed in = a[0] STUPID
	cmpl	$1, %edx      // if we have less than 1 element...
	jle	.L24            // done!
	subl	$2, %edx      // len-2
	leaq	4(%rcx), %rax // rax = location of 2nd element = rcx+4 bytes
	leaq	8(%rcx,%rdx,4), %rcx // rcx = rcx+rdx*4+8 ???
	jmp	.L28            // now do the loop, SPAGHETTI CODE, kind of ugly
.L30:
	movl	%edx, (%r9)   //
.L27:
	addq	$4, %rax
	cmpq	%rcx, %rax
	je	.L24
.L28:
	movl	(%rax), %edx  // load a[i] each time
	cmpl	(%r9), %edx   // if a[i] < min (but notice, min is (%r9) it's in memory
	jl	.L30            // if the new one a[i] is less, then go min=a[i]
	cmpl	(%r8), %edx   // is a[i] > max?
	jle	.L27            // if not, advance to next one, pass go, collect $200
	addq	$4, %rax      // i++ (4 bytes per element)
	movl	%edx, (%r8)   // max = a[i] (write to memory, S.L.O.W. and STUPID
	cmpq	%rcx, %rax    // are we there yet?
	jne	.L28            // if not, go back and do it again
.L24:
	ret
 */
double sumCosines(int n) {
	double sum = 0;
	const double div = 2*pi / n;
	for (int i = 0; i < n; i++)
		sum += cos(div * i);
	return sum;
}


/*
	Advanced code: you are not responsible for this. It uses the vector registers to calculate two answers. This is just for anyone who is interested in seeing how they compute something faster.
	Note that by passing back by reference, there is some inefficiency.
	We are writing back to memory, and the caller then loads that memory right back into registers. Surely we could do better?
 */
// passing by reference. uses an integer register pointing at a location in memory
void polar2rect(double r, double theta, double& x, double& y) {
	x = r * cos(theta);
	y = r * sin(theta);
}
/*
	.globl	_Z10polar2rectddRdS_
_Z10polar2rectddRdS_:
	pushq	%rsi      // save these on the stack somehow
	pushq	%rbx      // so you can do something with them?
	subq	$72, %rsp // allocate space on the stack
	movups	%xmm6, 48(%rsp) // save out xmm6 to the stack
	movapd	%xmm0, %xmm6    // xmm6 = r
	movq	%r8, %rsi         // rsi = r8? location of x?
	movapd	%xmm1, %xmm0    // xmm0 = theta
	movq	%r9, %rbx         // ask on stack overflow, what's r9 coming in?
	leaq	40(%rsp), %rdx    // rdx = pointer to x?
	leaq	32(%rsp), %r8     // r8 =  pointer to y?
	call	sincos            // compute sin and cos of theta in xmm0
	movsd	32(%rsp), %xmm0   // load xmm0 with ??
	mulsd	%xmm6, %xmm0      // multiply r*cos(theta)
	movsd	%xmm0, (%rsi)     // write into x
	mulsd	40(%rsp), %xmm6   // xmm6 = r * sin(theta) (another read from memory, slow)
	movsd	%xmm6, (%rbx)     // write out to y
	movups	48(%rsp), %xmm6 // load xmm6 with whatever was in it before
	addq	$72, %rsp         // undo the stack
	popq	%rbx              // get back the pushes
	popq	%rsi
	ret
 */

/*
	In this one, I create a pair of numbers in a structure and return
	that, so it seems to return both. Unfortunately, it still needs to
	put values into registers. Again, we should be able to do better.
 */
point polar2rect2(double r, double theta) {
	return {r * cos(theta), r * sin(theta)};
}

