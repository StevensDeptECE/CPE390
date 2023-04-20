#include <iostream>
#include <fcntl.h>
#include <unistd.h>
#include <time.h>
using namespace std;

void write1ByteAtaTime(int h, char c, uint64_t n) {
    char buf[1] = {c};
    for (uint64_t i = 0; i < n; i++)
      write(h, buf, 1);
}

void writekByteAtaTime(int h, char c, uint64_t n, uint64_t k) {
    char buf[k];
    for (int i = 0; i < k; i++)
    buf[i] = c;

    for (uint64_t i = 0; i < n/k; i++)
      write(h, buf, k);
}

int main() {
    int h = open("test.dat",  O_WRONLY|O_CREAT, 0640);
    if (h < 0) {
        cout << "file did not open successfully\n";
        exit(-1);
    }

    const int n = 100 * 1024*1024;
    clock_t t0 = clock();
    //write1ByteAtaTime(h, 'x', n);
    writekByteAtaTime(h, 'y', n, 1019);
    clock_t t1 = clock();
    cout << (t1-t0) << '\n';
    close(h);
}