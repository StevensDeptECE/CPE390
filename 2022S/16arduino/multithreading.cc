#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;
thread* tp1;
thread* tp2;

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

void input() {
	char n;
	for(;;) {
		cin >> n;
		if (n== 'q') {
			cout << "I want to kill those threads!\n";
			//		tp1->terminate();
			//			tp2->terminate();
			exit(0);
		}
	}
}

int main() {
  thread t1(f);
	thread t2(g);
	thread t3(input);
	tp1 = &t1;
	tp2 = &t2;
	
	t1.join();
	t2.join();
	t3.join();
}
