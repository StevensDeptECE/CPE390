#include <iostream>
using namespace std;
float f(int x) {
	return (float)x;
}


int main() {
	
	int a;
	cin >> a;

	float b =  f(a);
	cout << b << '\n';
}
