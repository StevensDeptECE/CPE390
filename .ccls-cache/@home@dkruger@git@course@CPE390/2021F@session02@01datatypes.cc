#include <iostream>
using namespace std;

int main() {

    // what is a bit? low = 0 or high=1
    // a byte = 8 bits
    // 00000000
    // 00000001
    // 00000010
    // 00000011
    // ... 2 * 2 * 2 ... = 2**8 = 256
    // 16 bits = 2^16 = 65536
    char c;     // minimal addressing unit of your computer signed/unsigned not defined
                // wchar_t 32 bits, UGLY
    int a;      //  int >= 16 bits >= short int      +/- 2147...  2.1billion
    long int b; // long >= int
    short int d; // short <= int  = 16 bits?
    unsigned int ua;
    signed int ia;
    long long e;

    bool tf;

    c = 'A'; // 65
    c = 65;
    c = -125;
    unsigned char uc = 'A';

    // use these instead, they are portable!
    uint8_t fred;
    uint16_t u16;
    uint32_t u32;
    uint64_t u64;

    int8_t i8; // 8 bits = 1 byte
    int16_t i16; // 16 bits = 2 bytes
    int32_t i32; // 32 bits = 4 bytes
    int64_t i64; // 64 bits = 8 bytes


    /*
      937
            unsigned     signed
      421
      000   0            0
      001   1            1
      010   2            2
      011   3            3
      100   4            -4
      101   5            -3
      110   6            -2
      111   7            -1

      11
      111
      001
      ===
     1000
     */

    unsigned char max = 255;
    max = max + 1;
    cout << (int)max << '\n';
    max = max - 2;
    cout << (int)max << '\n';


    const char s2[] = "hello there";
    const char* s = "hello there";




    //float f;
    //double d;

}
