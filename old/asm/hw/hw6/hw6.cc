#include <iostream>
using namespace std;

extern unsigned char checksum(const char mystring[]);
int main() {
	cout << (int)checksum("ABC") << '\n'; // 65 + 66 + 67 = 198
	cout << (int)checksum("abcdef") << '\n'; // (97 + 98 + 99 + 100 + 101) MOD 256=
}
