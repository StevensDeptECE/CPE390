#include <iostream>
using namespace std;

int main() {
	for (int i = 1; i < 100; i *= 2)
		cout << i << ' ';
	cout << '\n';

	for (int i = 1; i < 100; i *= 3)
		cout << i << ' ';
	cout << '\n';

	for (int i = 1; i < 20; i += 2)
		cout << i << ' ';
	cout << '\n';

	for (int i = 20; i > 0; i -= 2)
		cout << i << ' ';
	cout << '\n';

	for (int i = 1; i <= n; i++) {
		for (int j = 1; j <= n; j++) {
			cout << i * j << '\t';
		}
		cout << '\n';
	}
	
