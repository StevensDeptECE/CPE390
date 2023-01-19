#include <iostream>
#include <cmath>
using namespace std;
#if 0
int main() {
    int a = 3 + 4;
    int b = 3 - 4;
    int c = 3 * 4;
    int d = 3 / 4;
    int e = 5 % 4;
}
#endif

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

double f5(double a) {
    return -a;
}

double f6(double a) {
    return abs(a);
}

double f7(double a) {
    return sqrt(a);
}

/*
    addsd   %xmm1, %xmm0
    subsd   %xmm1, %xmm0
    mulsd   %xmm1, %xmm0
    divsd   %xmm1, %xmm0
    sqrtsd  %xmm1, %xmm0
    xorpd   %xmm1, %xmm0
    xorpd   8(%rcx), %xmm0
    andpd   8(%rcx), %xmm0
*/