#include <iostream>

using namespace std;

int x; // global variable
namespace stevens {
	int x;
};

void f() {
	int y;
	cout << y << '\n';
}

void g() {
	int*p = new int[1024*1024];
	int a[] = { 1, 5, 2, 4, 19};
	float x = 1.234e22;
	double y = 99e201;
}
int main() {
	int x; // x is initialized to ??? random garbage (whatever was in memory)
	cout << "x=" << x << '\n';
	x++;
	cout << "x=" << x << '\n';
	cout << ::x << '\n';
	cout << "stevens::x=" << stevens::x << '\n';


	int z[1024*1024];
	f();
	x = 2;

}
