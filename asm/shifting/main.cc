#include <iostream>

using namespace std;

int set(int v, int pos);
int clear(int v, int pos);
int test(int v, int pos);
int toggle(int v, int pos);

int main() {
	cout << set(5, 3) << '\n'; // 101 | 1000 = 1101 = 13
	cout << set(17, 10) << '\n'; // 10001  1000010001 = 1041
	cout << clear(31, 0) << '\n'; // 30
	cout << clear(1024, 2) << '\n'; // 1024
	cout << test(0x1040, 6) << '\n'; // true (1)
	cout << test(0x1040, 5) << '\n'; // false (0)
	int x = 0x100;
	x = toggle(x, 8);
	cout << x << '\n'; // 0
	x = toggle(x, 8);
	cout << x << '\n'; // 256
}


	
