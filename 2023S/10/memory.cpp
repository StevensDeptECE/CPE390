#include <iostream>
using namespace std;
int x[1024]; // global variable (all zeros)

//bss is uninitialized global storage
// in assembler
// .space 1024
int main() {
    int a = 3;
    int b[10];
    for (int i = 0; i < 10; i++)
      ;

    const uint64_t n = 16ULL * 1024 * 1024 * 1024;
    int* p = new int[n]; // heap
    for (int i = 0; i < n; i++)
      *p = 0;
    delete[] p;
}