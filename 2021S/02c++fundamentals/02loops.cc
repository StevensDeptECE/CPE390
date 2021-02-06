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

// 1 + 2 + 3 + ... + n
int sum(int n) {
  int total = 0;
  for (int i=1; i <= n; i++)
  {
    total += i; // total = total + i;
  }

  return total;
}

// product of the numbers 1 *2 * 3 * ... *n
int fact(int n) {
  int ans = 1;
  for (int i = n; i > 0; i--){
    ans = ans * i;
  }
   return ans;
}//well this is more fun

int main() {
  for (int i = 1; i <= 10; i++)
    std::cout << i;
  //int a = 9000;
  //int b = 20;
  //int c[100];
  f();
}
