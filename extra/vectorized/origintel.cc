float dx = (x2-x1)/width;
float dy = (y2-y1)/height;
// round up width to next multiple of 8
int roundedWidth = (width+7) & ~7UL; 
 
float constants[] = {dx, dy, x1, y1, 1.0f, 4.0f};
__m256 ymm0 = _mm256_broadcast_ss(constants);   // all dx
__m256 ymm1 = _mm256_broadcast_ss(constants+1); // all dy
__m256 ymm2 = _mm256_broadcast_ss(constants+2); // all x1
__m256 ymm3 = _mm256_broadcast_ss(constants+3); // all y1
__m256 ymm4 = _mm256_broadcast_ss(constants+4); // all 1's (iter increments)
__m256 ymm5 = _mm256_broadcast_ss(constants+5); // all 4's (comparisons)
 
float incr[8]={0.0f,1.0f,2.0f,3.0f,4.0f,5.0f,6.0f,7.0f}; // used to reset the i position when j increases
__m256 ymm6 = _mm256_xor_ps(ymm0,ymm0); // zero out j counter (ymm0 is just a dummy)
 
for (int j = 0; j < height; j+=1)
{
	__m256 ymm7  = _mm256_load_ps(incr);  // i counter set to 0,1,2,..,7
	for (int i = 0; i < roundedWidth; i+=8)
	{
		__m256 ymm8 = _mm256_mul_ps(ymm7, ymm0);  // x0 = (i+k)*dx 
		ymm8 = _mm256_add_ps(ymm8, ymm2);         // x0 = x1+(i+k)*dx
		__m256 ymm9 = _mm256_mul_ps(ymm6, ymm1);  // y0 = j*dy
		ymm9 = _mm256_add_ps(ymm9, ymm3);         // y0 = y1+j*dy
		__m256 ymm10 = _mm256_xor_ps(ymm0,ymm0);  // zero out iteration counter
		__m256 ymm11 = ymm10, ymm12 = ymm10;        // set initial xi=0, yi=0
 
		unsigned int test = 0;
		int iter = 0;
		do
		{
			__m256 ymm13 = _mm256_mul_ps(ymm11,ymm11); // xi*xi
			__m256 ymm14 = _mm256_mul_ps(ymm12,ymm12); // yi*yi
			__m256 ymm15 = _mm256_add_ps(ymm13,ymm14); // xi*xi+yi*yi
 			
			// xi*xi+yi*yi < 4 in each slot
			ymm15 = _mm256_cmp_ps(ymm15,ymm5, _CMP_LT_OQ);        
			// now ymm15 has all 1s in the non overflowed locations
			test = _mm256_movemask_ps(ymm15)&255;      // lower 8 bits are comparisons
			ymm15 = _mm256_and_ps(ymm15,ymm4);
			// get 1.0f or 0.0f in each field as counters
			// counters for each pixel iteration
			ymm10 = _mm256_add_ps(ymm10,ymm15);        
 
			ymm15 = _mm256_mul_ps(ymm11,ymm12);        // xi*yi 
			ymm11 = _mm256_sub_ps(ymm13,ymm14);        // xi*xi-yi*yi
			ymm11 = _mm256_add_ps(ymm11,ymm8);         // xi <- xi*xi-yi*yi+x0 done!
			ymm12 = _mm256_add_ps(ymm15,ymm15);        // 2*xi*yi
			ymm12 = _mm256_add_ps(ymm12,ymm9);         // yi <- 2*xi*yi+y0	
 
			++iter;
		} while ((test != 0) && (iter < maxIters));
 
		// convert iterations to output values
		__m256i ymm10i = _mm256_cvtps_epi32(ymm10);
 
		// write only where needed
		int top = (i+7) < width? 8: width&7;
		for (int k = 0; k < top; ++k)
			image[i+k+j*width] = ymm10i.m256i_i16[2*k];
 
		// next i position - increment each slot by 8
		ymm7 = _mm256_add_ps(ymm7, ymm5);
		ymm7 = _mm256_add_ps(ymm7, ymm5);
	}
	ymm6 = _mm256_add_ps(ymm6,ymm4); // increment j counter
}
