#include <iostream>
using namespace std;

// printf("%d", n);
int main() {
	int n;
	cin >> n;

	// if n is even, divide by 2
	// if n is odd, multiply by 3 and add 1
	//5 16 8 4 2 1
	// 17  52 26  13 40 20 10 5
	while (n > 1) {
		if (n % 2 == 0) {
			n >>= 1; // divide n by 2   LSR rx, #1
		} else {
			n = (n << 1) + n + 1;
		}
		cout << n << ' ';
	}
	cout << '\n';
}
