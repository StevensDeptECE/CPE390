#include <iostream>
using namespace std;

void byValue(int x) {
	x++;
	cout << x << '\n';
}

void byRef(int* p) { // passing a pointer to the value
	(*p)++; // this adds 1 to the value coming in
}
void byRef2(const int& r) { // using c++ references (a limited pointer)
  r++; // different syntax, same effect
}
