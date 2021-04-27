#include <iostream>
using namespace std;

int main() {
	int i = 1;
	while (i <= 10) {
		cout << i;
		i++;
	}
  cout << '\n';
	
	for (int i = 1; i <= 5; i++)
		cout << i;
  cout << '\n';
	
  cout << i << '\n';

	for (int i = 10; i < 10; i++) {
		cout << i;
	}
  cout << '\n';

	i = 10;
	do {
		cout << "do i=" << i;
		i++;
	}while (i < 10);
	
}
