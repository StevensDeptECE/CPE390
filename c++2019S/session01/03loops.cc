#include <iostream>
#include <unistd.h>
using namespace std;

int main() {
	for (int i = 1; i <= 10; i++ ) { // i +=1;   i = i + 1;  ++i
		cout << i;
	}
	cout << endl;
	for (int i = 7; i >= 2; i--) {
		//		sleep(1);
		cout << i << "   " << flush;
	}
	for (int i = 5; i <= 1024; i = i * 2) { // i *= 2
		cout << i << ' ';
	}
	cout << '\n';
}
