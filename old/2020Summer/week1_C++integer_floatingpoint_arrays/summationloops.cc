#include <iostream>
#include <iomanip>
using namespace std;
double mean(double a, double b, double c) { return (a + b + c) / 3; }

int sum(int n1, int n2) {
  int s = 0;
  for (int i = n1; i <= n2; i++) {
    s += i;
  }
  return s;
}

float sumRecip(float num, float den) {
  float answer = 0;
  for (int i = 1; i <= den; i++) {
    answer += num / i;
  }
  return answer;
}

float sumRecip2(float num, float den) {
  float sumx = 0;
  for (int i = den; i > 0; i--) {
    sumx = sumx + num / i;
  }
  return sumx;
}

int sumRecip3(float num, uint32_t den) {
  float sumx = 0;
  for (int i = den; i > 0; i--) {
    sumx = sumx + num / float(i);  // old way to write this (float)i;
  }
  return sumx;
}

int main() {
  // 12,345.67
  // 123,456.7
  // 1,234,567.
  cout << mean(1.0, 2.5, 3.5) << '\n';
  cout << setprecision(7);
  cout << sum(5, 15) << '\n';
  cout << sumRecip(1, 100) << '\n';   // 1/1 + 1/2 + 1/3 + ... + 1/100
  cout << sumRecip2(1, 100) << '\n';  // 1/100 + 1/99 + ... + 1
}

/*
Floating point rules:
x + y == y + x commutivity works
x + y + z != x + (y + z) NO ASSOCIATIVE PROPERTY



6.02e+23

 1.23
  .123
  .879
 =====

 1.23
  .123
======
 1.35
  .879
=====
2.22

  .123
  .879
======
 1.002
 1.23
 ====
 2.23

*/