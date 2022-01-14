#include <iostream>
using namespace std;


int f(int x) {
  return x*x;
}

int sumAtoB(int a, int b) {
  return 0;
}

int sumArray(int a[], uint32_t len) {
  // sizeof(a)
  return 0;
}


int main() {
  int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  cout << sumArray(a, sizeof(a)/sizeof(int)) << '\n';
  int sum;
  for (int i = 0; i < sizeof(a)/sizeof(int); i++)
    sum += a[i];  // i[a]
  cout << sum << '\n';

  int b[] = {9, 1};
  cout << sumArray(b, 2);
}
  
