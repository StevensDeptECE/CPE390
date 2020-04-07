#include <iostream>
using namespace std;
void f(int n);

int main() {
	for (int i = 0; i < 10; i++)
		cout << i;
	f(10);
	f(20);
	f(3);
	return 0;
}
