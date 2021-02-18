#include <unistd.h>
#include <fcntl.h>
#include <cstdint>

int main() {
  constexpr uint32_t size = 1024;
  uint32_t a[size];
  for (int i = 0; i < size; i++)
    a[i] = i;

  constexpr int n = 1024*1024;
  int fh = creat("big.bin", O_RDWR);
  for (uint32_t i = 0; i < n; i++)
    write(fh, a, sizeof(a));
  close(fh);

}