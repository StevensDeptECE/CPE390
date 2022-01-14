#include <iostream>
using namespace std;

int checksum(const char s[]); // write this in assembler

int main() {
	const char s[] = "ABC"; // 'A' 'B' 'C' '\0'   65 + 66 + 67 = ???
	cout << checksum(s) << '\n';
}
