#include <iostream>
using namespace std;

void f() {
	for (int i = 0; i < 10; i++) {
		if (i == 5) {
			cout << "test";
		}
		cout << i;
	}
	cout << '\n';
}

int main() {
	f();
  return 0;
}
