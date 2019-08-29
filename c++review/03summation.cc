#include <iostream>
using namespace std;

void f() {
	int sum = 0; // ALWAYS INITIALIZE YOUR VARIABLES
	for (int i = 1; i <= 10; i++) {
		sum = sum + i; // sum += i;
		cout << sum << '\n';
	}
}
int main() {
	f();
	return 0;
}		
