#include <iostream>
using namespace std;

extern "C" uint64_t f3(uint64_t a[], uint64_t len);
extern "C" uint64_t f4(uint64_t a[], uint64_t len, uint64_t numTrials);
int main() {
    constexpr uint32_t n = 1024*1024*1024;
    //uint64_t x[n];
    uint64_t* x = new uint64_t[n]; 
    //f3(x, 4ULL*n);
   f4(x, n, 32);

    delete [] x;
}