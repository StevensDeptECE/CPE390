#include <iostream>
using namespace std;

class A {
public:
	virtual void f() = 0;
	virtual void g() = 0;
};

class B : public A {
public:
	void f() { cout << "B"; }
	void g() { cout << "yo!"; }
};

class C : public A {
public:
	void f() { cout << "C"; }
	void g() { cout << "ho!"; }
};

int main() {
	B b1;
	b1.f();

	//C c1;
	//	c1.f();

	A* p = &b1;
	p->f();
	p->g();
	//	p = &c1;
	//	p->f();
}
