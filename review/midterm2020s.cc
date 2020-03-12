#include <iostream>
#include <cmath>
using namespace std;

double f(int x1, int y1, int x2, int y2) {
	int dx = x2-x1, dy = y2-y1;
  return sqrt(dx*dx+dy*dy);
}

// pass by reference NOT required on the midterm
void quadratic(double a, double b, double c, double& x1, double& x2) {
	double disc = sqrt(b*b-4*a*c);
	double invDenom = 0.5 / a;  // 1/(2*a)
	x1 = (-b + disc) *invDenom;
	x2 = (-b - disc) *invDenom;
}

constexpr double PI = 3.14159265358979;

double radToDeg(double r) {
	return r * 180 / PI;
}
double fasterRadToDeg(double r) {
	return r * (180 / PI);  // in floating point the optimizer is afraid rearranging might change the answer!
}

// 1/1 + 1/2 + 1/3 + ... + 1/n
double sum(int n) {
  double s = 0;
	for (int i = 1; i <= n; i++) {
		s += 1.0/i;
	}
	return s;
}

// recursion
// Devil's DP dictionary
// recursion: see, recursion
int fact(int n);

void playwithstack();
int main() {
	int a = 2/3; // 0
	int b = 2.0  / 3.0; // computes .6666666 --> truncates 0
	double c = 2 / 3; // 0.0   FIRST computes 2/3 --> 0 then converts 0.0
	double d = 1 / 2.0; // type promotion 1 --> 1.0   1.0 / 2.0 --> 0.5
	int n;
	{
		double a = 2.0, b = 3.0, c = 2.5;
		double x1, x2;
		quadratic(a, b, c,  x1, x2);


	}
	playwithstack();
	f(1, 2, 3, 4);
	do {
  	cin >> n; // readin(cin, location in memory where n lives)
	  cout << fact(n) << '\n';
	} while (n >= 0);
}
