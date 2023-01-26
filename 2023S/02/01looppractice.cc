
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    // count from 1 to 50 odd numbers only
    for(int i =1; i<=50; i+=2){
        cout << i;
    }
    

    
    
    // 109876543210blastoff
    for (int i = 10; i>=0; i--){
        std::cout<<i;
    }
    std::cout<<"blastoff\n";

        // 1 2 4 8 16 32 64 .. 1024

        for(int i = 0; i < 10; i++) {
            printf("%u\n", pow(2, i));
        }
        
        for (int i = 1; i <= 1024; i = i + i){
          std::cout << i << std::endl;
        }
}