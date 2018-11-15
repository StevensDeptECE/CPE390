#include <iostream>
using namespace std;

int main() {

	float sum = 0;
	for (int i = 1; i <= 100; i++) {
		sum += 1.0/i;
		cout << i << '\t' << sum << '\n';
	}

	float sum2 = 0;
	for (int i = 100; i > 0; i--) {
		sum2 += 1.0/i;
		cout << i << '\t' << sum2 << '\n';
	}
	cout << sum << "\t" << sum2 << "\t" << (sum - sum2) << '\n';

}
