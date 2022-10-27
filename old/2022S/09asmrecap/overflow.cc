#include <iostream>

using namespace std;

int main() {
  uint32_t a = 1; // 0000000000000001
	for (int i = 0; i < 20; i++) {
		a *= 2;
		cout << a << '\n';
	}

}
