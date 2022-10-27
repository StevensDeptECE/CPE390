#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;

void f() {
	for (;;) {
		cout << "hello\n";
		usleep(100000);
	}
}

void g() {
	for (;;) {
		cout << "bye\n";
		usleep(200000);
	}				
}

int main() {
  thread t1(f);
	thread t2(g);
	t1.join();
	t2.join();
}
