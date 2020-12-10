#include <iostream>
#include <unistd.h>
using namespace std;


int main() {
	for (int i = 0; i < 200; i++) {
		cout << "yo ho ho and a bottle of rum!";
		usleep(600000);
	}
}
