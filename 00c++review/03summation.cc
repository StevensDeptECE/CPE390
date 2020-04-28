#include <iostream>
using namespace std;

void g() {
	int a = 996;
	int b = 1003;
	float f = 1.5;
}

void f() {
	int sum; // ALWAYS INITIALIZE YOUR VARIABLES
	for (int i = 1; i < 10; i++) {
		sum = sum + i; // sum += i;
		cout << sum << '\n';
	}
}
int main() {
	g();
	f();
	return 0;
}		
