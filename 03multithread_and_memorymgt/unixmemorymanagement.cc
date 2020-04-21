#include <iostream>
using namespace std;

int x = 0;
int main() {
	int a = 2;
	cout << "a=" << &a << '\n';
	cout << "x=" << &x << '\n';
	int* p = new int[1000];
	cout << "p=" << p << '\n';
	delete[] p;
}
