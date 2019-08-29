#include <iostream>
using namespace std;

extern "C" void f();
extern void g();
extern int h(int a, int b);
int main() {
	f();
	g();
	cout << h(3,4) << endl;
}
