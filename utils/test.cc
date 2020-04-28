#include <iostream>

using namespace std;

int f(int x) {
	return x*2;
}

int main() {
	for (int i = 0; i < 10; i++)
		cout << i << ' ';
	cout << f(3) << '\n';
}
