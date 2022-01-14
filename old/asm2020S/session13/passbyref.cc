#include <iostream>
using namespace std;

void f(int x) { // r0 = x (fastcall convention)
	cout << x << '\n';
	x = 99;
}
void f(int x, int y) { // r0 = x, r1=y
}
void f(int a, int b, int c, int d){} // r0,r1,r2,r3

void g(int& x) {
	cout << x << '\n';
	x = 99;
}

void h(double& x) {
	x = 2.0;
}

int main() {
	int i = 2;
	f(i);
	cout << i << '\n';
	g(i); // will print i (2) but will also set i = 99
  cout << i << '\n';
}
