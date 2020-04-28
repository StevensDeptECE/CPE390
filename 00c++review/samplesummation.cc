#include <iostream>
#include <cmath>

using namespace std;

int main() {
	// 1/1 + 1/2 + 1/3 + ... + 1/100
	// 1/100  + 1/99 + ... + 1/1

	float sum = 0;
	for (float i = 1; i <= 100; i++) {
		cout << 1 / i << ' ';
		sum += 1 / i;
	}
	cout << "sum=" << sum << '\n';
}
