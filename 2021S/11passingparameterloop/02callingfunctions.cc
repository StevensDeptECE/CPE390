#include <iostream>
using namespace std;

#include "funcs.hh"
void f();
void f(int);
void f(int,int);
void f(int,int,int);
void f(int,int,int,int);
void f(int,int,int,int,int);
void f(int, const char*);
//int fact(int);
int main() {
	f();
	f(1);
	f(2,3);
	f(1,2,3);
	f(1,2,3,4);
	f(1,2,3,4,5); //messy!

	f(1, "hello this is a long string");
	return 0;
}
