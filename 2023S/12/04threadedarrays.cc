#include <iostream>
#include <time.h>
#include <thread>

using namespace std;

void zero(uint32_t x[], uint32_t len) {
    for (uint32_t i = 0; i < len; i++)
      x[i] = 0;
}

void add1(uint32_t x[], uint32_t start, uint32_t len) {
    for (uint32_t i = start; i < start+len; i++)
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
    clock_t tstart = clock();
    thread t1(add1, arr, 0, n/2);
    thread t2(add1, arr, n/2, n/2);
    t1.join();
    t2.join();
    clock_t tend = clock();
    cout << (tend-tstart) << '\n';

    delete [] arr;
}