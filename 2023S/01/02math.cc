int main() {
    // int not guranteed size, not guaranteed sign
    {
        int a = 3 / 2;
        int b = 7 / 2;
        int c = 7 % 2; // 7 mod 2 (Remainder)
        int d = 2 + 3;
        int e = 2 - 3; //-1
    }
    {
        // what is a bit? 0/1
        // on Arduino Uno 1=5v
        // on Arduino Due 1 = 3.3V
        // on your laptop? find out.
        // 
        uint8_t a = 0;
        uint16_t b = 65535;
        uint32_t c = 10000000;
        uint64_t d = 123456789012345678ULL;
        int age;
        cin >> age;
        // print out your age in seconds
    }        
}