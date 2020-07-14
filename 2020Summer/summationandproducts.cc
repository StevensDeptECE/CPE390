#include <iostream>
#include <iomanip>
using namespace std;

//compute the sum 1+2+3+...+n
int32_t sum(int n) {
  uint32_t a = 0;
  for (uint16_t i = 1; i <= n; i++) {
    a += i;
  }
  return a;
}

//compute the product 1*2*3*...*n
int64_t fact(int n) {
  uint64_t product = 1;
  for (int i = 1; i <= n; i++) {
    product *= i;
  }
  return product;
}

//compute the product 1*2*3*...*n
double  fact2(int n) {
  double product = 1;
  for (int i = 1; i <= n; i++) {
    product *= i;
  }
  return product;
}

// 1 + 2 +      3 + ... + (n-1) + n
// n + (n-1) + (n-2) + ..+ 2    + 1
// n * (n+1) /2

int main() {
  cout << sum(5) << '\n';
  cout << fact(5) << '\n';

  cout << sum(1000) << '\n';
  cout << fact(20) << '\n';
  cout << fact(35) << '\n';
  cout << fact2(35) << '\n';
  cout << setprecision(15);
  cout << fact2(100) << '\n';
  cout << fact2(200) << '\n';
  cout << fact2(300) << '\n';


}