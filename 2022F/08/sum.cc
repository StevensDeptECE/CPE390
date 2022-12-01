#include <iostream>
#include <iomanip>
using namespace std;

int main() {
	// sum the numbers 1/1 + 1/2 + 1/3 + ... + 1/100 = 5.18
	float sum = 0;
	for (float i = 1; i <= 100; i++)
		sum += 1.0/i;
	float sum2 = 0;
	for (float i = 100; i >= 1; i--)
		sum2 += 1.0/i;

	cout << setprecision(8);
	cout << sum << "\t" << sum2 << "\n\n\n";
	cout << (sum - sum2) << '\n';
}
