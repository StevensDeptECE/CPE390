#include <iostream>
using namespace std;

bool isEven(int n) {
	return n % 2 == 0;
#if 0
	if (n % 2 != 0)
	return false; /* this is a comment */
	else
		return true;
#endif
}

void printOddOrEven(int n) {
	if (n % 2 != 0)
		cout << "odd\n";
	else
		cout << "even\n";
}

int main() {
	cout << isEven(3) << '\n';
	printOddOrEven(4);
}
