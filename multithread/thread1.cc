#include <iostream>
#include <thread>

using namespace std;


const int n = 10000;
int balance = 0; // balance is in RAM

void deposit() {
  for (int i = 0; i < n; i++)
		balance++;
	/*
		ldr r1, [r0]
		add r1, #1
    str r1, [r0]

	 */
}

void withdraw() {
	for (int i = 0; i < n; i++)
		if (balance > 1)
			balance--;
}

int main() {
	thread t1(deposit);
	//	thread t2(deposit);
	thread t2(withdraw);
	t1.join();
	t2.join();
	cout << "balance=" << balance << '\n';
}
