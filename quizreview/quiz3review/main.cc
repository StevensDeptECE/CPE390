#include <iostream>
using namespace std;

extern int add(int a, int b);
extern int factorial(int count);

int main() {
	cout << add(2,3) << '\n';   // R0 = cout, R1 = the number to print
	cout << factorial(10) << '\n';
}
	
