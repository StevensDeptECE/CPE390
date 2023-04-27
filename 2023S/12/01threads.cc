#include <thread>
#include <iostream>
#include <unistd.h>
using namespace std;

void f() {
  while (true) {
    cout << "hello";
    usleep(100000);
  }
}

void g() {
  while (true) {
    cout << "bye";
    usleep(200000);
  }

}

int main() {
    thread t1(f);
    thread t2(g);
    t1.join(); // wait for t1 to complete
    t2.join();
}