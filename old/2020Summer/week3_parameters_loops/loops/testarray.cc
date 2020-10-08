#include <iostream>
using namespace std;

int sumArr3(int x[]);

int main() {
	int x[3] = {5, 9, 2};
	int ans = sumArr3(x);
	cout << ans << '\n';
	iny y[3] = {9, 1, 2};
	ans = sumArr3(y);
	cout << ans << '\n';
}
