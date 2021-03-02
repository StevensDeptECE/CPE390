#include <iostream>
using namespace std;

//     r0         r0,   r1
extern int sum(int a, int b); // _Z3sumii

int main() {
	cout << sum(1, 3) << '\n'; // should print 6 (1+2+3)
	cout << sum(2, 4) << '\n'; // should print 9 (2+3+4)
	cout << sum(1, 10) << '\n'; // should print 55
	return 0;
}
