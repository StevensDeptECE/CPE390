#include <iostream>
using namespace std;

int f();
int f(int x);

int main() {
	cout << f() << '\n';
	cout << f(2) << '\n';
	return 0;
}
