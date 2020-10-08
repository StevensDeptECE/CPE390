#include <iostream>
using namespace std;
void byValue(int);
void byRef(int*); // passing a pointer to the value
void byRef2(const int&); // using c++ references (a limited pointer)

int main() {
	int a = 2;
	int*p = &a;
	byValue(a);
	byRef(&a); // passing a pointer
  byRef2(a); // you can't tell by looking at it, but this is the same as the above	

}
