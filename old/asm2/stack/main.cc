#include <iostream>

void f();

int fact(int n);
int fact2(int n);

int f(int a, int b, int c, int d);
int f(int a, int b, int c, int d, int e);
using namespace std;

int main() {
	f();
	cout << fact(10) << '\n';
	cout << fact2(10) << '\n';

	// this is how arm passes 4 int params and returns 1
	cout << f(1, 2, 3, 4) << '\n';

	// this is how arm passes 5 int params and returns 1
	cout << f(1, 2, 3, 4, 5) << '\n';
}
