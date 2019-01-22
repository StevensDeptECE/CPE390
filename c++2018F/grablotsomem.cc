#include <iostream>
using namespace std;

int main() {
	const int n = 1000000000;
	int* p = new int[n];
#if 0
	
	//sequential writing:
	// this is slower...
	for (int i = 0; i < n; i++)
		p[i] = 0;
#endif
#if 0
	//non-sequential should be worse
	for (int j = 0; j < 16; j++) {
		for (int i = j; i < n; i += 16) {
			p[i] = 0;
		}
	}
#endif
	
	//non-sequential should be worse
	for (int j = 0; j < 16384; j++) {
		for (int i = j; i < n; i += 16384) {
			p[i] = 0;
		}
	}


	
	int* q = new int[n];
	cout << "hello\n";
	delete [] p;
	delete [] q;
}
	
