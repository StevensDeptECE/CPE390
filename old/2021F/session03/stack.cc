#include <iostream>

using namespace std;

int f(int n) {
  int a[100];
  if (n <= 0)
    return 1;
  cout << &n << '\n';
  return 2+f(n-1);
}

int main() {
  f(20000);
}
