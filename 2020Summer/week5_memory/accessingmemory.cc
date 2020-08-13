#include <iostream>
#include <time.h>

using namespace std;

#if 0
void readOneMemoryLocation(const int x[], int n) {
    int temp;
    for(int i = 0; i<n; i++){
      temp = x[0];
    }
}

void readEntireArray(const int x[], int n) {
    int temp;
    for(int i=0; i<=n; i++){
      temp=x[i];
    }
}
#endif
void readOneMemoryLocation(const int x[], int n);
void readEntireArray(const int x[], int n);

uint32_t sumEntireArray(const int x[], int n) {
    uint32_t sum = 0;
    for(int i = 0; i < n; i++){
        sum += x[i];
    }
    return sum;
}

int main() {
// probably exceeds stack size  int a[1000000];
  const uint32_t size = 1000000000;
  int* p = new int[size];
  cout << p << '\n';

  clock_t t0 = clock();  
  readOneMemoryLocation(p, size);
  clock_t t1 = clock();  
  cout << "Read One Memory Location elapsed t=" << (t1-t0) << '\n';

  t0 = clock();
  readEntireArray(p, size);
  t1 = clock();
  cout << "Read Entire Array elapsed t=" << (t1-t0) << '\n';

  t0 = clock();
  uint32_t s = sumEntireArray(p, size);
  t1 = clock();
  cout << "sum Entire Location elapsed t=" << (t1-t0) << '\n';
  cout << s << '\n';
}
