#include <iostream>
#include <cmath>

using namespace std;

int add(int a, int b){
	return a + b;
}

double hypot(double a, double b) {
	return sqrt(a*a + b*b);
}


double f(double x) {
	asm("vsqrt.f64 r0");
}

int main() {
	int a,b;
	cin >> a >> b;
  cout << add(a,b) << '\n';
	cout << hypot(a, b) << '\n';
}
