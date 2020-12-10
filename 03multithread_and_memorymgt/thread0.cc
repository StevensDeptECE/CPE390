#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;

void f() {
	for (int i = 0; i < 500; i++) {
		cout << "hello" << flush;
		usleep(100000);
	}
}

void g() {
	for (int i = 0; i < 40; i++) {
		cout << "bye"  << flush;
		usleep(1000000);
	}
}

void h() {
	for (int i = 0; i < 100; i++) {
		cout << "yo!"  << flush;
		usleep(200000);
	}
}

void i() {
	for (int i = 0; i < 200; i++) {
		cout << "ho!"  << flush;
		usleep(600000);
	}
}


int main() {
	thread t1(f);
  thread t2(g);
	thread t3(h);
	thread t4(i);
	t1.join();
	t2.join();
	t3.join();
	t4.join();
}
