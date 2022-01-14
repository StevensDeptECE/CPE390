#include <immintrin.h>
#include <time.h>
#include <stdio.h>

void print(__m256d v) {
  double* res = (double*)&v;
  printf("%lf %lf %lf %lf\n", res[0], res[1], res[2], res[3]);
}

int main() {

  __m256d v1 = _mm256_setr_pd(4.0, 5.0, 13.0, 6.0);
  __m256d v2 = _mm256_setr_pd(9.0, 3.0, 6.0, 7.0);
  __m256d v3 = _mm256_setr_pd(8.0, 2.5, 1.6, 0.7);
  __m256d v4 = _mm256_setr_pd(11.2, -2.1, 9.2, 1.3);
  __m256d v5 = _mm256_setr_pd(-8.0, 1.1, -3.3, 0.7);

  __m256d v6 = _mm256_setr_pd(0.0, 0.0, 0.0, 0.0);
  __m256d v7 = _mm256_setr_pd(0.0, 0.0, 0.0, 0.0);
  __m256d v8 = _mm256_setr_pd(0.0, 0.0, 0.0, 0.0);
  __m256d v9 = _mm256_setr_pd(0.0, 0.0, 0.0, 0.0);
  __m256d v10 = _mm256_setr_pd(0.0, 0.0, 0.0, 0.0);

  clock_t t0 = clock();
  const unsigned int n = 1000000000;
  for (int i = 0; i  < n; i++) {
    v6 = _mm256_add_pd(v1, v6);
    v7 = _mm256_add_pd(v2, v7);
    v8 = _mm256_add_pd(v3, v8);
    v9 = _mm256_add_pd(v4, v9);
    v10 = _mm256_add_pd(v5, v10);
  }
  clock_t t1 = clock();
  printf("Elapsed %ld\n", (t1-t0));
  print(v6);
  print(v7);
  print(v8);
  print(v9);
  print(v10);
  return 0;
}
