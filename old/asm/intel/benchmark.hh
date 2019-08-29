#pragma once
#ifdef _MSC_VER
# include <intrin.h>
#else
# include <x86intrin.h>
#endif

// optional wrapper if you don't want to just use __rdtsc() everywhere
inline
uint64_t readTSC() {
	_mm_lfence();  // optionally wait for earlier insns to retire before reading the clock
	uint64_t tsc = __rdtsc();
	 _mm_lfence();  // optionally block later instructions until rdtsc retires
	return tsc;
}

// requires a Nehalem or newer CPU.  Not Core2 or earlier.  IDK when AMD added it.
inline
uint64_t readTSCp() {
    unsigned dummy;
    return __rdtscp(&dummy);  // waits for earlier insns to retire, but allows later to start
}

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

typedef uint64_t (*FuncOneInt)(uint32_t n);
/**
	 time a function that takes an integer parameter and returns a 64 bit number
	 Since this is capable of timing in clock cycles, we won't have to do it a
	 huge number of times and divide, we can literally count clocks.
	 Don't forget that everything takes time including getting into and out of the
	 function.  You may want to time an empty function.  The time to do the computation
	 can be compute by taking the time of the function you want minus the empty one.
 */
void clockBench(const char* msg, uint32_t n, FuncOneInt f) {
 	uint64_t r = f(n); // warm up by running the function before benchmarking
	// now it's in cache.  Benchmark it.
	// TODO: but we need lfence to stop it from being rescheduled before rdtsc
	uint64_t t0 = readTSC();
	r += f(n);
	uint64_t t1 = readTSC();
	std::cout << msg << "n=" << n << "\telapsed=" << (t1-t0) << '\n';
}

typedef void (*FuncBlockMem)(uint64_t* p, uint32_t n);

/**
	 time a function involving a block of memory and no return value
	 Since it takes a bit of time to get into and out of a function, you should
	 probably run with at least n=100, or alternatively benchmark getting in and 
	 out of an empty function and subtract those clock cycles.
 */
void clockBench(const char* msg, uint32_t n, FuncBlockMem f) {
	uint64_t* p = new uint64_t[n]; // allocate a block of n 64-bit elements
	uint64_t t0 = readTSC();         // get start time
	f(p, n);                       // run the benchmark
	uint64_t t1 = readTSC();         // get stop time
	delete [] p;                   // free the memory
	std::cout << msg << "n=" << n << "\telapsed=" << (t1-t0) << '\n'; // print elapsed
}
