#include <iostream>
#include <iomanip>
using namespace std;

//                rcx      edx
double sum(double x[], int n) {
  float sum = 0;
	for (int i = 0 ; i < n; i++) {
		sum += x[i];
	}
	return sum;
}
/*
	xmm0.. xmm15  // each one can hold TWO double
LOOP:
	 RCX = points to start of array
	pxor	%xmm0, %xmm0         // xmm0 = 0
	leaq	(%rcx,%rdx,8), %rax  // rax = END OF ARRAY
	addsd	(%rcx), %xmm0        // xmm0 = xmm0 + a[0]
	addq	$8, %rcx             // now rcx points to next element
	cmpq	%rcx, %rax
	jne	LOOP
	ret

	vectorized instructions can do
	   2 at a time using xmm      AVX
	   4 at a time using ymm      AVX2
	   8 at a time using zmm      AVX512
//  addvd %zmm0, %zmm2 // add 8 double precision numbers
	
*/
