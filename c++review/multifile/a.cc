#include <iostream>

using namespace std;
void f();
void g();
extern int x;
int main() {
	int y; // auto variables are uninitialized
	cout << "test";
	f();
	cout << x;
	//	g();  // this line will give a linker error because g does not exist
}
