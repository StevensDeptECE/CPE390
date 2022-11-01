#include <cstdint>

uint64_t f1a(uint64_t a, uint64_t b) {
    return a + b;
}

uint64_t f1b(uint64_t a, uint64_t b) {
    return a - b;
}

uint64_t f1c(uint64_t a, uint64_t b) {
    return a * b;
}

uint64_t f1d(uint64_t a, uint64_t b) {
    return a / b;
}

uint64_t f1e(uint64_t a, uint64_t b) {
    return a % b;
}

uint64_t f1f(uint64_t a) {
    return -a;
}

uint64_t f1g(uint64_t a, uint64_t b) {
    return a & b;
}

uint64_t f1h(uint64_t a, uint64_t b) {
    return a | b;
}

uint64_t f1i(uint64_t a, uint64_t b) {
    return a ^ b;
}

uint64_t f1j(uint64_t a) {
    return ~a;
}

uint64_t f1k(uint64_t a, uint64_t b) {
    return a << b;
}

uint64_t f1m(uint64_t a) {
    return a << 2;
}

uint64_t f1n(uint64_t a, uint64_t b) {
    return a >> b;
}

uint64_t f1o(uint64_t a) {
    return a >> 2;
}

uint64_t f1p(uint64_t a) {
    uint64_t b = (a >> 2 | a << 62);
    uint64_t c = (b >> 7 | b << 57);
    uint64_t d = (c >> 11 | c << 53);
    return b ^ c ^ d;
}

