#include <iostream>
using namespace std;
void g(int x) {
	cout << "in function g x=" << x << '\n';
}

void f(int x) {
	cout << "in function f x=" << x << '\n';
	g(x);
}
int main() {
	for (int i = 0; i < 10; i++)
		f(i);
}
