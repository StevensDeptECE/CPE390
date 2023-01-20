# CPE390 Final Sample Test 2022F

1. C++ Problems

1. Write functions to make the following main work as described
```cpp
int main() {
    int a[] = {1, 2, 3, 4};
    double avg = mean(a, 4); // mean is 2.5 in this example

    double coef[] = {5, -3, 2, 1, 4};
    // evaluate the polynomial 5x^4 - 3x^3 + 2x^2 + x + 4 with x=2.5
    // do this using Horner's form, in a loop:
    // keep multiplying by x and adding each coefficient, like this
    // (but in a loop)
    // ((coef[0] * x + coef[1]) * x + coef[2]) * x + ...
    double eval(coef, 5, 2.5);

    // in c a string ends with the last character whose ASCII code is '\0'
    // (which is not the digit 0, it's control-@, a non-printable character)
    char s[] = "this is my string\0";
    reverse(s); // s should contain: gnirts ym si siht

    "hello\0"
     hello
     // swap the two variables a and b using xor
    int a = 3, b = 4;
    a = a ^ b; // 011 XOR 100 = 111 = 7 
    b = a ^ b; // 111 XOR 100 = 3
    a = a ^ b;

    a= 15 - a;
    if (a == 0)
      a = 15;
    else
      a = 0;

      reverse the bits of a
      1000 ==> 0001
      FFT needs bit reversal
    brev %rcx

    int len;
    for (len = 0; s[len] != '\0'; len++)
      ;
     // len = length of the string s
    for (int i = 0; i < len/2; i++) {
      char temp = s[i];
      s[i] = s[len-1-i];
      s[len-1-i] = temp;

      s[i] += s[len-1-i];  // s[i] = sum of both
      s[len-1-i] = s[i] - s[len-1-i]
      s[i] = s[i] - s[len-1-i]
    }

    // Write a function to combine three 8-bit numbers r,g,b into a single color value
    // the number should be rrrrrrrrggggggggbbbbbbbb where b is low order bits
    uint32_t color(uint32_t r, uint32_t g, uint32_t b) {


    }
  }
```

2. Intel Assembler

1. Implement the following C++ functions in Intel assembler:
```cpp
uint64_t f(uint64_t a, uint64_t b) {
    return (a+b)*(a-b);
}

bool mask(uint64_t a, uint64_t b) {
    return a & b == b;
}

uint64_t toggle(uint64_t a, uint64_t mask) {
    return a ^ mask;
}

// sum the numbers from a to b inclusive
uint64_t toggle(uint64_t a, uint64_t b) {
    uint64_t sum = 0;
    for (uint64_t i = a; i <= b; i++)
      sum += i;
    return sum
}
```


 
3. Optimization Show how the optimizer changes the following code to make it faster.

```cpp
uint64_t f1(uint64_t a, uint64_t b) {
    uint64_t x = 3 + 4; // _______________________
    return a * 2 + b * 16 + x;// _______________________
}


uint64_t f2(uint64_t a, uint64_t b) {
    return a / 2 + b % 4; // ___________________________
}

uint64_t f3(uint64_t a) {
    return (a << 3) | (a >> 61);  // _____________________
}

uint64_t f4(uint64_t a) {
    return a * 9;  // _____________________
}
```

5. Hardware

Draw a circuit allowing an Arduino to turn a motor on and off using a power MOSFET. Answer the questions from the spec sheet provided.

1. What is the maximum voltage motor this MOSFET can drive?
1. What voltage is required to fully turn on the MOSFET?
1. What is the resistance of the MOSFET when it is turned on?
1. If we want to turn the motor on 50%, how should it be done?
1. Draw an H-bridge controller controlled by an Arduino.
1. What is the maximum power dissipation the transistor can handle?
1. In order to handle anywhere near the maximum, what would you
 have to add to the transistor?

6. Identify the circuit.

$$ Q=AB $$
$$ Q=\overline{A}\overline{B} $$
$$ Q=\overline{A+B} $$
$$ Q=\overline{A+B} $$
$$ Q = A \oplus B $$
$$ Q = \overline {A \oplus B} $$

