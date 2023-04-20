#include <iostream>
#include <cmath>
using namespace std;

double f1(double a, double b) {
    return a + b;
}

double f2(double a, double b) {
    return a - b;
}

double f3(double a, double b) {
    return a * b;
}

double f4(double a, double b) {
    return a / b;
}

double f4b(double a, double b) {
    return b / a;
}

double f4c(double a) {
    return 1.0 / a;
}

double f5(double a) {
    return abs(a);
}

double f6(double a) {
    return -a;
}

double f7(uint64_t a) {
//OLD WAY:        return (double)a;
// new C++ functional notation
    return double(a);
}

double f8(double a, double b, double c, double d, double e) {
  return a + b + c + d + e;
}

double f9(double a, double b) {
  double c = a + b;
  double d = a - b;
  double e = a* b;
  double f = a/ b;
  return c*d * sin(b) * cos(a) - e*f * sin(a) * cos(b);
}

extern double dovabs(double a);

int main() {
    double a;
    cin >> a;
    double y = f6(a);
    cout << y << '\n';   

    y = dovabs(a);
    cout << y << '\n';
}