#include <iostream>
#include <fstream>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
using namespace std;


int main() { //rwx rwx rwx
  int status = mkdir("a",0700);
  cout << "mkdir status=" << status << '\n';
  status = chdir("a");
  cout << "chdir status=" << status << '\n';
  ofstream f("test.dat");
  f << "yoho!\n";
}
