uint64_t replaceD(uint64_t v) {
    uint64_t last = v & 0xF;
    if (last == 0xD) {
        last = 0xC;
    }
    uint64_t secondlast = v & 0xF0;
    if (secondlast == 0xD0)
       last = 0xC0;
    return (v & 0xFFFFFFFFFFFF00) | secondlast | last;
}

int main() {
    replaceD(0x15712517D7);
    replaceD(0x157125179D);
    replaceD(0x15712517DD);
}