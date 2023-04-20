#include <iostream>
#include <fcntl.h>
#include <unistd.h>
using namespace std;

int main() {
//                   rwx rwx ---
//                   110 100 000
    int h = open("test.dat",  O_WRONLY|O_CREAT|O_APPEND, 0640);
    if (h < 0) {
        cout << "file did not open successfully\n";
        exit(-1);
    }
    // allocate dynamic memory, ask for whatever you like
    // if you ask for more than physically available, it will work up to a point
    // virtual memory limit
    char* p = new char[16ULL*1024 * 1024*1024];
    *p = 'a';
    p[1] = 97; // 'c'
    //*(p+52) == p[52]    movb 16(%rsi), %rax
    for (int i = 0; i < 1024*1024*1024; i++)
      p[i] = 'x';
    delete[] p;
    char buf[256] = "hello, testing, testing anyone there?";
    write(h, buf, sizeof(buf));
    close(h);
}