#include <iostream>
using namespace std;

int main() {
	for (float x = 0; x < 100; x += 0.1) {
		cout << x << ' ';
	}
	cout << '\n';

	// 2 + 3 == 3 + 2
	// 2 + 3 + 4 == 2 + (3 + 4)
}
