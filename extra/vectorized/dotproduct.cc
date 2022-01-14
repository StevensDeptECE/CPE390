#include <immintrin.h>
#include <cmath>
#include <iostream>
using namespace std;

double slow_dot_product(const double a[], const double b[], int n) {
  double answer = 0.0;
  for(int i = 0; i < n; ++i)
    answer += a[i]*b[i];
  return answer;
}

double dot_product(const double a[], const double b[], int n) {
  __m256d sum = _mm256_set_pd(0.0, 0.0, 0.0, 0.0);

  /* Add up partial dot-products in blocks of 256 bits */
  for(int i = 0; i < n; i += 4) {
    __m256d x = _mm256_load_pd(a+i); // load 4 doubles in a burst
    __m256d y = _mm256_load_pd(b+i); // same
    __m256d z = _mm256_mul_pd(x,y);  // multiply each corresponding
    sum = _mm256_add_pd(sum, z); // add them in parallel
  }
  __m256d temp = _mm256_hadd_pd(sum, sum); // add each half
  __m128d sum_high = _mm256_extractf128_pd(temp, 1); // pull out each half
	__m128d sum_low = _mm256_castpd256_pd128(temp);
  __m128d result = _mm_add_pd(sum_high, sum_low); // add the two halves
  return ((double*)&result)[0];
}


double benchmarkSlowDotProduct(const double a[], const double b[],
														 int n, int numIterations) {
	double sum = 0;
	for (int i = 0; i < numIterations; i++)
		sum += slow_dot_product(a, b, n);
	return sum;
}

double benchmarkAVXDotProduct(const double a[], const double b[],
															int n, int numIterations) {
	double sum = 0;
	for (int i = 0; i < numIterations; i++)
		sum += slow_dot_product(a, b, n);
	return sum;
}

const char* equalityTest(double a, double b) {
	return a == b ? "Passed" : "Failed";
}
template<typename Func>
void bench(const char msg[], Func f,
					 double a[], double b[], int n, int numTrials) {
	double v = 0;
	clock_t t0 = clock();
	for (int i = 0; i < numTrials; i++) {
		v += f(a, b, n, numTrials);
	}
	clock_t t1 = clock();
	cout << msg << "\t" << (t1-t0)*1e-6 << "\t" << v << endl;
}

int main() {
	constexpr int N = 1024*8;
  __attribute__ ((aligned (32))) double a[N], b[N];

  for(int i = 0; i < N; ++i)
    a[i] = b[i] = i/sqrt(N);

  double ans1 = dot_product(a, b, N);
  double ans2 = slow_dot_product(a,b,N);
	
  cout << ans1 << '\t' << ans2 << "\t" <<
		equalityTest(ans1, ans2) << '\n';
	constexpr int numTrials = 1000;
	bench( "benchmarkSlowDotProduct", benchmarkSlowDotProduct, a, b, N, numTrials);
	bench( "benchmarkAVXDotProduct", benchmarkAVXDotProduct, a, b, N, numTrials);
}
