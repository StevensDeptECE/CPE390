#include<iostream>
#include "benchmarkfunctions.hh"

using namespace std;

inline unsigned long long rdtsc() {
  unsigned int lo, hi;
  asm volatile (
     "cpuid \n"
     "rdtsc" 
   : "=a"(lo), "=d"(hi) /* outputs */
   : "a"(0)             /* inputs */
   : "%ebx", "%ecx");     /* clobbers*/
  return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
}

typedef uint64_ (*FuncOneInt)(uint32_t n);
void clockBench(const char* msg, uint32_t n, FuncOneInt f) {
	uint64_t t0 = rdtsc();
	uint64_t r = f(n);
	uint64_t t1 = rdtsc();
	cout << msg << "n=" << n << "\telapsed=" << (t1-t0) << '\n';
}




int main() {
	uint32_t n = 100;
	clockBench("Sum 1 to ", n, sum1Ton);
	clockBench("Sum div ", n, sumDiv);
	clockBench("Division in loop", n, divisions);
	clockBench("2 Divisions in loop", n, divisions2);
	clockBench("3 Divisions in loop", n, divisions2);
}
