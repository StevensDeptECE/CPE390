#include <immintrin.h>
int main() {
  __m256i a = _mm256_set_epi32(1, 2, 3, 4, 5, 6, 7, 8);
  double x = 1.0, y = 2.0, z = 3.0;
  __m256d c,d;
  __m256d b = _mm256_loadu_pd(&x);
  //  __m256d c = _mm256_loadu_pd(&y);
  //  __m256d d = _mm256_loadu_pd(&z);
  d = _mm256_fmadd_pd(b, c, d); // c += a * b
  _mm256_add_pd(b, c);
}
