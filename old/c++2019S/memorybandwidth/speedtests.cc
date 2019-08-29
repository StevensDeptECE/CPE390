#include <iostream>
#include <time.h>
using namespace std;

void testadd(int n);
void testmult(int n);
void testsequentialmemory(int n);
void testmemoryjumps1024(int n);
void testmemoryjumps16(int n);
void testmemoryjumps8(int n);
void testmemoryjumps4(int n);
void testmemoryjumps2(int n);

typedef void (*FuncOneIntParam)(int n);

void benchmark(const char msg[], FuncOneIntParam f, int n) {
	clock_t t0 = clock();
	f(n);
	clock_t t1 = clock();
	cout << msg << " elapsed: " << (t1-t0) << '\n';
}


int main(int argc, char* argv[]) {
	const int n = 1024*1024* 256;
	benchmark("add", testadd, n);
	benchmark("mult", testmult, n);
	benchmark("seq memory", testsequentialmemory, n);
	benchmark("memory jump 16", testmemoryjumps16, n);
	benchmark("memory jump 8", testmemoryjumps8, n);
	benchmark("memory jump 4", testmemoryjumps4, n);
	benchmark("memory jump 2", testmemoryjumps2, n);
	benchmark("memory jump 1024", testmemoryjumps1024, n);
	
	//	cout << (t1-t0) << ": " << CLOCKS_PER_SEC << "\n";
}
