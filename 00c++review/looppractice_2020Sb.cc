#include <iostream>
using namespace std;

int main() {
	// print all even numbers up to and including 100
	for (int i = 0; i <= 100; i += 2) {
		cout << i << ' ';
	}
	cout << '\n';
	// 1 2 4 8 16 32 ... 1024
	for (int i = 1; i <= 1024; i *= 2)
	cout << i << ' ';
	cout << '\n';

	// 100 50 25 12 6 3 1
	for (int i = 100; i > 0; i /= 2)
	cout << i << ' ';
	cout << '\n';
}
