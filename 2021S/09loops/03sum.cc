#include <iostream>
using namespace std;

int x; // I am declaring global variable x
extern int y; // someone else is declaring global int y, I am just using it

int sum(int);
extern int sum(int);

int main() {
	int y = sum(101);
	cout << y << '\n';
}
