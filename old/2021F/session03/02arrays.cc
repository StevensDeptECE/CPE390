#include <iostream>
#include <vector>
using namespace std;

int main() {
  uint32_t a;
  cout << a << '\n';

  const int SIZE = 6;
  uint32_t b[SIZE];
  for (int i = 0; i < SIZE; i++)
    cout << b[i] << ' ';
  cout << '\n';

  // not in course, just for fun: vector

  vector<int> d = {5, 4, 2};
  d.push_back(3); // vectors can grow
  d[1] = 19;

  for (int i = 0; i < 100000; i++)
    d.push_back(i);
  
  uint32_t c[] = {1, 5, 9, 2, 3, 7, 11};

  printf("%d\n", 2.231);


  uint64_t e[10] = {9, 1, 10000000000ULL};

  
}
