#include <iostream>
using namespace std;

//f(x)=2x
	
int sum(int n) {
	int s;
	for (int count = 1; count <= n; count++) {
		s += count;
	}
	return s;
}

void f() {
	int y = sum(3);
	cout << sum(3) << '\n';
	cout << sum(100) << '\n';
}

int main() {
	// count 0 to 9
	for (int i = 0; i < 10; i++)
		cout << i << ' ';
	cout << '\n';
	
	// count 1, 2, 4, 8, 16, ... 1024
	for (int i = 1; i <= 1024; i = i * 2) {  // i *= 2
		cout << i << ' ';
	}	
	cout << '\n';
		
	// 100 50 25 12 6 3 1
	for (int i = 100; i > 0; i /= 2)
		cout << i << ' ';
	cout << '\n';
	
	f();
}
