#include <iostream>
using namespace std;

int main() {
	int a = 2;
	int *p = &a;
	*p = 3;
	p = (int*)5000LL; // I really want location 5000! I have a death wish
	cout << *p; // DIE DIE DIE
	int* q;
	cout << *q;
}
