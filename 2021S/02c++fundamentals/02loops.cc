#include <iostream>
namespace stevens {

int x; // global  variables are initialized to zero by default
};
// 1   + 2  + 3  + 4 + .... + 100
// 100 + 99 + 98 + ... + 1
// n(n+1)/2

void f() {
  int xxx =2;
  int yyy =2;
  int sum; // not variables on the stack (in a function!)
  // i are a good programmer
  for (int i = 1; i <= 100; i++)
    sum = sum + i;
  std::cout << "sum=" << sum << '\n';
}

int main() {
  for (int i = 1; i <= 10; i++) std::cout << i;
  int a = 9000;
  int b = 20;
  int c[100];
  f();
}