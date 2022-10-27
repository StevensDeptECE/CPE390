#include <iostream>
#include <cstdint>
#include<cstdio>

int main() {
    for (int i = 1; i<=10; i++){
        printf("%d \n", i);    
    }
    std::cout << '\n';

    for (int j = 10; j >= 0; j--){
        std::cout << j << " " ;
    }
    std::cout << '\n';

    uint32_t a = 123456789U;
    uint64_t b = 123456789012345678ULL;
    int32_t c = -1234567890;
    int64_t d = -123456789012345678LL;
  
  for (uint32_t i = 10; i >= 0; i--)
    std::cout << i << ' ';




  
}