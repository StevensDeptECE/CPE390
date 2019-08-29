#include <iostream>
using namespace std;

class A {
public:
	virtual void f() = 0;
};

class B : public A {
public:
	virtual void f() { cout << "I'm a B!\n"; }
};

class C : public A {
public:
	virtual void f() { cout << "I'm a C!\n"; }
};


int main() {
	B b1;
	b1.f(); // regular call
	C c1;
	A* p = &b1;
	p->f(); // call the appropriate function, in this case B::f
	p = &c1;
	p->f(); // call the appropriate function, in this case C::f
}
