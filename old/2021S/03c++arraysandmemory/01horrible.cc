#include <iostream>
using namespace std;

int main() {
	for (float f = 0; f != 10; f += 0.5)
		cout << f << ' ';
	cout << '\n';
#if 0
	for (float f = 0; f != 10; f += 0.1)
		cout << f << ' ';
	cout << '\n';
#endif

	for (float x = 1e8; x < 1e8+100; x++)
		cout << x << ' ';
	return 0;
}
