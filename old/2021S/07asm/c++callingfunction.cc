#include <iostream>
using namespace std;

extern int f(int a, int b, int c);

int main() {
	cout << f(4, 5, 6);
	return 0;
}
