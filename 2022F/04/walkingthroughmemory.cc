#include <iostream>
using namespace std;
void print_uninitialized_array() {
  int a[50]; // 4000 bytes
  for (int i = 0; i < 50; i++)
    cout << a[i] << ' ';
}

uint64_t bench1(uint64_t a[], uint32_t n) {
  uint64_t sum = 0;
  for (uint32_t i = 0; i < n; i++)
    sum += a[i];
  return sum;
}

uint64_t benchunaligned(uint64_t* a, uint32_t n) {
    //a = a + 1; // this means point to the next element +8
  a= (uint64_t*)((uint8_t*)a + 1);
  uint64_t sum = 0;
  for (uint32_t i = 0; i < n; i++)
    sum += a[i];
  return sum;
}

uint64_t benchunalignedwrite(uint64_t* a, uint32_t n) {
  a= (uint64_t*)((uint8_t*)a + 1);
  uint64_t sum = 0;
  for (uint32_t i = 0; i < n; i++)
    a[i] = 0;
  return 17; // just for the halibut
}


int main() {
    const uint32_t n = 1000000000;
 //   uint64_t arr[n]; // stack overflow
   uint64_t* arr = new uint64_t[n];
 //   cout << bench1(arr, n) << '\n';  
 //cout << benchunaligned(arr, n) << '\n';
 cout << benchunalignedwrite(arr, n) << '\n';

    delete [] arr;
}