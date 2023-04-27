#include <iostream>
#include <time.h>
using namespace std;

void zero(uint32_t x[], uint32_t len) {
    for (uint32_t i = 0; i < len; i++)
      x[i] = 0;
}

void add1(uint32_t x[], uint32_t len) {
    for (uint32_t i = 0; i < len; i++)
      x[i] += 1;
}

/*
                   rcx         rdx
void zero(uint32_t x[], uint32_t len) {

    xor    %rax, %rax    # rax = 0
loop:
    mov   %rax, (%rcx)   # write 0 to the first 64 bit memory location   
    add   $8,  %rcx
    sub   $2, $rdx
    jne   loop
*/

//      argv[0] is the name of the program
//      argv[1] is the first parameter
int main(int argc, char*argv[]) {
    const uint32_t n = atoi(argv[1]);

//    uint32_t arr[n];
    uint32_t* arr = new uint32_t[n];
    zero(arr, n);
    clock_t t0 = clock();
    add1(arr, n);
    clock_t t1 = clock();
    cout << (t1-t0) << '\n';

    delete [] arr;
}