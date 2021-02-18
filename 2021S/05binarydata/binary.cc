#include <iostream>
#include <fstream>


#include <cstdio>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
using namespace std;
/*
  Today we are going to read in data in ASCII (text) and write it out in binary
  You will get homework asking you to decode a file and read the data out of it.
  You may use xxd or od

  We are going to practice looking up functions in the manual pages


*/

class Stock {
public:
  char sym[8];
  float price; // 1.23  135.17   12345.67 123456.78   1234567.xx
  uint32_t volume;
};

Stock readInUsingCPP() {
  Stock s;
  cin >> s.sym >> s.price >> s.volume;
  return s;
}

void writeStockBinaryUsingCPP(Stock s) {
  ofstream f("aapl.bin", ios::binary);
  f.write((char*)&s, sizeof(s));
}

Stock readInUsingC() {
  Stock s;
  scanf("%s%f%d", &s.sym[0], &s.price, &s.volume);
  return s;
}

void writeStockBinaryUsingC(Stock s) { 
  FILE *fp = fopen("ctest.bin", "wb");
  fwrite((char *)&s, sizeof(s), 1, fp);
  fclose(fp);
}

void directToOperatingSystem(Stock s) {
  int fh = creat("binary.dat", 0600); //octal rw- --- ---
 
  write(fh, &s, sizeof(s)); 
  close(fh);
}

int main() {
  Stock s = readInUsingCPP();
  cout << s.sym << " " << s.price << " " << s.volume << '\n'; // C++ library
  writeStockBinaryUsingCPP(s);
  s = readInUsingC();
  printf("%s %f %d\n", s.sym, s.price, s.volume); // old C style
  writeStockBinaryUsingC(s);

  directToOperatingSystem(s);

}