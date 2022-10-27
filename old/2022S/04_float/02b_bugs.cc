#include <iostream>
#include <iomanip>
using namespace std;

// 1.0f + 0.00000000000001f == 1.0
int main() {
	cout << setprecision(8);
	for (float f = 100000000; f <= 100000100; f += 1)
		cout << f << ' ';
	cout << '\n';
}
