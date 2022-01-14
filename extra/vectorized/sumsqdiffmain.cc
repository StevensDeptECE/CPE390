#include "sumsqdiff.h"
#include <iostream>
#include <iomanip>
#include <time.h>
using namespace std;

int main() {
  //double x[] = {1, 2, 3, 4}; //, 5, 6, 7, 8, 9, 10, 11.5, 12};
  constexpr uint64_t n = 100000000+16;
  double* mem = new double[n];
  double*x = (double*)(uint64_t(mem + 3) & 0xFFFFFFFFFFFFFFE0ULL);
  cout << x << '\n';
  for (uint64_t i = 0; i < n; i++)
    x[i] = i;
  clock_t t0 = clock();
  double sum = sumSqDiff(x, n);
  clock_t t1 = clock();
  cout << "Elapsed: " << (t1-t0) << '\n';
  cout << setprecision(15) << "sum=" << sum/(n-1) << '\n';
  delete [] mem;
}
