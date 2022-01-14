#include <thread>
#include <unistd.h>
#include <iostream>
using namespace std;

void f() {
	for (int i = 0; i < 10; i++) {
		cout << "yo" << flush;
		usleep(1000000);
	}
}

void g() {
	for (int i = 0; i < 10; i++) {
		cout << "ho" << flush;
		usleep(500000);
	}
}

int main() {
	thread t1(f);
	thread t2(g);
	t1.join();
	t2.join();
}
