constexpr __m256d neg = _mm256_setr_pd(1.0, -1.0, 1.0, -1.0);
/*
	Given 4 complex numbers (a+bi), (c+di), (x+yi), (z+wi)
	v1 = (a,b,x,y)
	v2 = (c,d,z,w)
	Multiply both pairs of complex numbers in 5 operations using Intel AVX instructions
 */
__m256d mult(__m256d v1, __m256d v2) {
  __m256d v3 = _mm256_mul_pd(v1, v2); // multiply each element v3 = (ac,bd,xz,yz)
  v2 = _mm256_permute_pd(v2, 0x5);    // switch real and imag  v2 = (d,c, w,z)
	v2 = _mm256_mul_pd(v2, neg);        // v2 = (d, -c,  w, -z)
  __m256d v4 = _mm256_mul_pd(v1, v2); // v4 = (ad,-bc, xw,-yz)
  v1 = _mm256_hsub_pd(v3, v4);        // v1 = (
  /* Horizontally subtract the elements in vec3 and vec4 */
	return v1;
}	

int main() {

  __m256d vec1 = _mm256_setr_pd(4.0, 5.0, 13.0, 6.0);
  __m256d vec2 = _mm256_setr_pd(9.0, 3.0, 6.0, 7.0);
  __m256d neg = _mm256_setr_pd(1.0, -1.0, 1.0, -1.0);
  
  /* Step 1: Multiply vec1 and vec2 */
  __m256d vec3 = _mm256_mul_pd(vec1, vec2);

  /* Step 2: Switch the real and imaginary elements of vec2 */
  vec2 = _mm256_permute_pd(vec2, 0x5);
  
  /* Step 3: Negate the imaginary elements of vec2 */
  vec2 = _mm256_mul_pd(vec2, neg);  
  
  /* Step 4: Multiply vec1 and the modified vec2 */
  __m256d vec4 = _mm256_mul_pd(vec1, vec2);

  /* Horizontally subtract the elements in vec3 and vec4 */
  vec1 = _mm256_hsub_pd(vec3, vec4);
  
  /* Display the elements of the result vector */
  double* res = (double*)&vec1;
  printf("%lf %lf %lf %lf\n", res[0], res[1], res[2], res[3]);
  
  return 0;
}
