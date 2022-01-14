#include <iostream>
#include <vector>
#include <array>
using namespace std;

/*
	Extra credit challenge for those who want to learn about
	C++ vectors (lists that grow)
	and array (bounds-checking, safe)
*/

int main() {
	vector<uint32_t> a;
	for (uint32_t i = 0; i < 10; i++)
		a.push_back(i);
	cout << "size=" << a.size() << '\n';
	for (uint32_t i = 10; i < 20000; i++)
		a[i] = 99;
	for (uint32_t i = 0; i < 20; i++)
		a.push_back(i);

	for (auto x : a) {
		cout << x << ' ';
	}
	cout << '\n';

	array<uint64_t, 3> b = {3, 1, 4};
	for (auto x : b) {
		cout << x << ' ';
	}
	cout << '\n';
	for (uint32_t i = 0; i < 300; i++)
		cout << b[i] << ' ';
	cout << '\n';
}
