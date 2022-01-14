#include <iostream>
using namespace std;
void f() {
	int a = 2;
	int x[] = {6, 5, 4, 2, 1, 23, 125, 1, 2, 51, 1};
}

void g() {
	int x; // INITIALIZE YOUR VARIABLES!!!
	cout << x << '\n';
}
int main() {
	int x; // INITIALIZE YOUR VARIABLES!!!
	cout << x << '\n';
	f();
	g();
	
	for (int i = 1; i <= 10; i++) {  // ++i; i = i + 1;  i += 1
		cout << i;
	}
	cout << '\n';
	

  int j = 1;
	while (j <= 10) {
		cout << j;
		j += 1; // j = j + 1; ++j;
	}
	cout << j;
	

	for (int i = 1; i <= 10; i++)
		cout << i << endl;

	for (int i = 10; i >= 0; i--) {
		cout << i << ' ';
	}
	cout << "blastoff\n";	

	
	return 0;
}
