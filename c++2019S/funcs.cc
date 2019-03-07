#include <cmath>
using namespace std;

int a(int x, int y) { return x + y; } // _Z1aii
//int b(uint32_t x, uint32_t y) { return x - y; } // _Z1bjj
int b(int x, int y) { return x - y; }
int c(int x, int y) { return x * y; }
int d(int x, int y) { return x / y; }
int e(int x, int y) { return x / 10; }

//set(uint32_t bits[], int i);   _Z3setPj, 

double f1(double x) { return x*x; }
double f2(double a, double b) { return a*a + b*b; }
double f3(double a, double b) { return sqrt(a*a + b*b); }
