#include <iostream>
#include <iomanip>
using namespace std;

int main() {
	cout << setprecision(7);
	for (float x = 0; x < 10; x += 0.1) {
		cout << x << ' ';
	}
	cout << '\n';
	
	cout << setprecision(15);
	for (double x = 0; x < 10; x += 0.1) {
		cout << x << ' ';
	}
	cout << '\n';

	// 2 + 3 == 3 + 2
	// 2 + 3 + 4 == 2 + (3 + 4)
}
