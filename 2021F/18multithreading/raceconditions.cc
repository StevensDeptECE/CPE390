#include<iostream>
#include <thread>
#include <chrono>
#include <mutex>

using namespace std;

int64_t balance = 0;

mutex m;
void deposit(uint32_t amt) {
	for (uint32_t i = 0; i < amt; i++) {
		m.lock();
		balance++;
		m.unlock();
	}
}


void withdraw(uint32_t amt) {
	for (uint32_t i = 0; i < amt; i++) {
		m.lock();
		if (balance > 0)
			balance--;
		m.unlock();
	}
}

int main() {
  thread t1(deposit, 100000000);
	this_thread::sleep_for(chrono::milliseconds(1));
	thread t2(withdraw, 50000000);
  t1.join();
	t2.join();
	cout << balance << endl;
}
