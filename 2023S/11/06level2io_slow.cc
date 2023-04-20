#include <iostream>
#include <fcntl.h>
#include <unistd.h>
using namespace std;

int main() {
    int h = open("test.dat",  O_WRONLY|O_CREAT, 0640);
    if (h < 0) {
        cout << "file did not open successfully\n";
        exit(-1);
    }
    char buf[2] = "x";
    const int n = 1 * 1024*1024;
    for (int i = 0; i < n; i++)
      write(h, buf, 1);
    close(h);
}