#include <immintrin.h>
int main() {
  __m256i a = _mm256_set_epi32(1, 2, 3, 4, 5, 6, 7, 8);
  __m256i b = _mm256_set_epi32(0x12345678, 0x9ABCDEF, 3, 4, 5, 6, 7, 8);
	__m256i c = __m256i _mm256_and_si256 (a, b);
	__m256i d = __m256i _mm256_or_si256 (a, b);
	__m256i e = __m256i _mm256_or_si256 (a, b);

	// shift or rotate
	
  double x = 1.0, y = 2.0, z = 3.0;
  __m256d c,d;
  __m256d b = _mm256_loadu_pd(&x);
  //  __m256d c = _mm256_loadu_pd(&y);
  //  __m256d d = _mm256_loadu_pd(&z);
  d = _mm256_fmadd_pd(b, c, d); // c += a * b
  _mm256_add_pd(b, c);
}
