#include <iostream>
using namespace std;

int sum(int* a, int len) {
  int total = 0;
	for (int i = 0; i < len; i++)
		total += a[i];
	return total;
}



int main() {
	int x[10];
	int y[5] = {3}; // y[0]= 3 y[1] = 0 y[2] = 0 ... y[4] = 0   memset(y+4,0, 16)
	int answer = sum(y, 5);
	cout << answer << '\n';
}
