#include <immintrin.h>
#include <cmath>
#include <iostream>
using namespace std;

/*
	Streamlined Intel's code by only considering multiples of 8
	I used meaningful names for the variables, but the disadvantage is they are
	using all 16 ymm registers, so using real names helps you keep track

	I think it might be possible to save some registers but it's very tricky.
 */
void fastMandelbrot(float x1_sc, float y1_sc, float x2_sc, float y2_sc,
										uint32_t w, uint32_t h,
										const uint16_t image[]) {
	float dx_sc = (x2-x1)/w;
	float dy_sc = (y2-y1)/h;
	const float ONE = 1.0f;
	const float FOUR = 1.0f;
 
  // replicate 8 of each value to 8 AVX2 register
	__m256 dx = _mm256_broadcast_ss(&dx_sc);
	__m256 dy = _mm256_broadcast_ss(&dy_sc);
	__m256 x1 = _mm256_broadcast_ss(&x1_sc);
	__m256 y1 = _mm256_broadcast_ss(&y1_sc);
	__m256 one = _mm256_broadcast_ss(&ONE);  // (iteration increments)
	__m256 four = _mm256_broadcast_ss(&FOUR); // (comparisons)
	float incr[8]={0.0f,1.0f,2.0f,3.0f,4.0f,5.0f,6.0f,7.0f}; // used to reset the i position when j increases
	__m256 jcount = _mm256_xor_ps(dx,dx); // zero out j counter (dx does not matter, xor with self=0)
	int c = 0; // track location in destination bitmap sequentially for simplicity
	for (int j = 0; j < height; ++j) {
		__m256 icount  = _mm256_load_ps(incr);  // i counter set to 0,1,2,..,7
		for (int i = 0; i < w; i += 8)	{ // do 8 points in parallel (float)
			__m256 x0 = _mm256_mul_ps(icount, dx);  // x0 = (i+k)*dx 
			x0 = _mm256_add_ps(x0, x1);             // x0 = x1+(i+k)*dx
			__m256 y0 = _mm256_mul_ps(jcount, dy);  // y0 = j*dy
			y0 = _mm256_add_ps(t1, dy);             // y0 = y1+j*dy
			__m256 fcount = _mm256_xor_ps(dx,dx);    // count = 0 in float!
			__m256 xi = fcount, yi = fcount;    // set initial xi=0, yi=0
			
			int iter = 0;
			unsigned int test = 0;
			do
			{
				__m256 xi_sq = _mm256_mul_ps(xi,xi); // xi*xi
				__m256 yi_sq = _mm256_mul_ps(yi,yi); // yi*yi
				__m256 temp = _mm256_add_ps(xi_sq, yi_sq); // temp = xi*xi+yi*yi (magnitude squared)
				
				// xi*xi+yi*yi < 4 in each slot
				temp = _mm256_cmp_ps(temp,four, _CMP_LT_OQ); // temp is the result for each
				// now ymm15 has all 1s in the non overflowed locations
				test = _mm256_movemask_ps(ymm15)&255;      // lower 8 bits are comparisons
				temp = _mm256_and_ps(temp,one);            // low bit, either 1 or 0
				fcount = _mm256_add_ps(fcount,temp);       // add 8 counts simultaneously
				temp = _mm256_mul_ps(xi,yi);               // temp = xi*yi 
				xi = _mm256_sub_ps(xi_sq,yi_sq);           // xi = xi*xi-yi*yi
				xi = _mm256_add_ps(xi,x0);                 // xi = xi*xi-yi*yi+x0 done!
				yi = _mm256_add_ps(temp,temp);             // yi = 2*xi*yi
				yi = _mm256_add_ps(yi,y0);                 // yi <- 2*xi*yi+y0
				++iter;
			} while (test != 0 && iter < maxIters); // if all 8 end early, computation terminates
 
			// convert float iterations to 32-bit int output values
			__m256i counts = _mm256_cvtps_epi32(fcount);
			
			for (int k = 0; k < 8; ++k)
				image[c++] = counts.m256i_i16[2*k];
			
			// next i position - increment each slot by 8
			incr = _mm256_add_ps(incr, four);
			incr = _mm256_add_ps(incr, four); // out of registers, so add 4 twice to get 8
		}
		jcount = _mm256_add_ps(jcount,one); // increment j counter
	}
}
