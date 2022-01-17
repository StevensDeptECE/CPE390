#include<iostream>
#include <thread>
#include <chrono>

using namespace std;

void f1() {
	for (;;) { 
		cout << "hello" << flush;
		this_thread::sleep_for(chrono::milliseconds(100));
	}
}

void f2() {
	for (;;) { 
		cout << "bye" << flush;
		this_thread::sleep_for(chrono::milliseconds(200));
	}
}

int main() {
  thread t1(f1);
	thread t2(f2);
  t1.join();
	t2.join();
}
