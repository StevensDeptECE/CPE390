#include <iostream>
#include <iomanip>
#include <cstdint>
#include <immintrin.h>

using namespace std;

// set all bits to 1
inline __m256i set1() { return _mm256_set1_epi64x(-1);}

// set every kth bit to 0
inline __m256i setkthzero(const uint32_t k) {
	const uint64_t rotate_by = 64 % k; // each 64 bit word shifts
	__m256i t = set1();

	//	for (uint32_t i = 0; i < 256; i += k) {
	//	t &= ~(1 << i); // obviously not AVX2, how to do this?
	//}
	uint64_t ta = 0xFFFFFFFFFFFFFFFEULL; // low bit set to zero
	uint64_t tb = (ta << rotate_by) | (ta >> (64-rotate_by)); // c++ rotate
	uint64_t tc = (tb << rotate_by) | (tb >> (64-rotate_by)); // c++ rotate
	uint64_t td = (tc << rotate_by) | (tc >> (64-rotate_by)); // c++ rotate

	__m256i mask =  _mm256_set_epi64x(td, tc, tb, ta);
	for (uint32_t i = 64; i > 0; i -= k) {
		__m256i shift = _mm256_rol_epi64(mask, k);
		mask = _mm256_and_si256(mask, shift);
	}
	return mask;
}

inline __m256i and256(__m256i a, __m256i b, __m256i c, __m256i d) {
	return _mm256_and_si256(_mm256_and_si256(a,b), _mm256_and_si256(c,d));
}

__m256i mask1(uint64_t start) {
	__m256i a = set1();
	const __m256i mask3 = setkthzero(3*2);
	const __m256i mask5 = setkthzero(5*2);
	const __m256i mask7 = setkthzero(7*2);
	const __m256i mask11 = setkthzero(11*2);
	const __m256i mask13 = setkthzero(13*2);
	const __m256i mask17 = setkthzero(17*2);
	const __m256i mask19 = setkthzero(19*2);
	return _mm256_and_si256(
													and256(mask3, mask5, mask7, mask11),
													and256(mask13, mask17, mask19, a));
}

union U256 {
    __m256i v;
    uint64_t a[4];
};

void printbits(__m256i v) {
  U256 m;
	m.v = v;
	cout << hex << m.a[0] << ' ' << m.a[1] << ' ' << m.a[2] << ' ' << m.a[3] << '\n';
}

int main() {
	__m256i v = setkthzero(6);
	printbits(v);
}
