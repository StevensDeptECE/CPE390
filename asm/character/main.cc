#include <iostream>
using namespace std;

extern int checksum(const char s[]);
int main() {
	const char msg[] = "this is a test";
	cout << checksum(msg) << '\n';
}
