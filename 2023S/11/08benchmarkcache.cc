#include <iostream>
#include <unistd.h>
#include <time.h>
using namespace std;

uint64_t testSequentialMemory(const char* p, uint64_t n) {
    uint64_t sum = 0;
    for (uint64_t i = 0; i < n; i++)
      sum += p[i];
    return sum;
}

uint64_t testSequentialMemory64(const char* p, uint64_t n) {
    const uint64_t* q = (const uint64_t*)p;
    uint64_t sum = 0;
    for (uint64_t i = 0; i < n/8; i++)
      sum += q[i];
    return sum;
}

void testSequential(const uint64_t* p, uint64_t n);
void testCache1(const uint64_t* p, uint64_t n);
void testCache2(const uint64_t* p, uint64_t n);


int main() {

    const uint64_t n = 2ULL*1024 * 1024*1024;
    char* p = new char[n]; // allocate huge chunk of memory
    clock_t t0 = clock();
//    uint64_t sum = testSequentialMemory(p, n);
//    uint64_t sum = testSequentialMemory64(p, n);
 //   testSequential(p, n/8);
//    testCache1((uint64_t*)p, n/8);
    testCache2((uint64_t*)p, n/8);
    clock_t t1 = clock();
    cout << (t1-t0) << '\n';
    delete [] p;
   // cout << sum << '\n';
}