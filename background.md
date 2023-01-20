# CPE390: Background

## Author: Dov Kruger

This document contains the material you are expected to know, either
from E116, or from AP computer science if you placed out of the intro
computer programming course.

Some of these things are C++ specific, so if you took Java, you won't know them.
The new standard primitive data types in C++ uint32_t, int32_t etc. may be new to you
but shouldn't present a major challenge.

If you don't know this material, please review it as soon as possible.
You can get help. My office hours are all setup information are in:
[Dov Kruger Course Info](https://github.com/stevensdeptece/DovKrugerCourses

## Terminology

bit (1=high voltage, 0=low voltage) 0V is not "off"
byte 8 bits
RAM (Random Access Memory) main memory of your computer


## Data Types

The C family of languages have a number of primitive datatypes including:

```cpp
int	// usually 16 or 32 bits. Usually signed. Not guaranteed! Yech
short   // usually 16 bits. Usually signed. Not guaranteed!
long    // on Arduino, 32 bits, on PC 64 bits. >= int
bool    // true or false (really 1 or 0 internally)
char    // one addressable unit on your computer (usually, 1 byte)
float   // single precision floating point 32-bits, 1.2345678f
double  // double precision 64 bits 1.23456789012345e+27
```

## Literals

C++ has standard ways of representing constants for each data type that you should know.

```cpp
int a = 3; // 3 is an int so no conversion is required
long int b = 3L; // 3L is a long int, size depends on the computer
long long int c = -123456789012345678LL; // long long is 64-bit on all computers I use
unsigned long long int d = 123456789012345678ULL;
char e = 'x'; // the single letter x
char f = '\n'; // a newline character (control J, or ASCII value 10)
float g = 1.2f; // single precision (32-bit) floating point
double h = 1.23456789012345; // double precision
bool i = false; // internally = 0
i = true; // internally 1 (but any non-zero value is true, we will look at how this works)
char j[6] = "string"; // contains the letters s t r i n g \0  the last ASCII NUL (code 0)
char m[] = "test"; // length of this string is 5 letters. Never forget the NUL
```


## Integer operators and precedence
```cpp
/* PEMDAS: things on the same level go left to right
  ()
  unary -
  * / %
  + -
  */
  int a = 2 + 3 * 4;
  a = a + 1; // add 1 to a
  a += 3;    // add 3 to a (shorthand)
  int b = 3;
  int c = 3 / 2 * 4; 
  int d = 3 % 4; // 4 goes into 3 0 times, remainder = 3
  d = 4 % 4; // 4 goes into 4 once, remainder = 0
  d = 5 % 4; // 4 goes into 5 once, remainder = 1
  d = 6 % 4; // 4 goes into 6 once, remainder = 2
  
  //extra (you might not know this, but nice if you can learn it now)
  // postincrement operator
  int x = b++;  // first c=b, then b++   so x = 3, b = 4

  // preincrement operator
  int y = ++b; // y = 5, b = 5
```

### Arrays

Arrays are a single block of memory. The name of the array is a pointer to the first location in the array

```cpp
int main() {
  int a[10]; // a is 10 integers, all uninialized, whatever random numbers on the stack
  float b[] = {1.5, 2.2, 3.4};   // b has 3 floating point numbers, 12 bytes
  double c[2][3] = {
    {3.5, 1, 2},
    {2, 1.5, 9.1}
  }; // c has 2 rows of 3 columns each, total 2 * 3 = 6
  //6  * sizeof(double) = 48 bytes
  // order in memory is  3.5, 1.0, 2.0, 2.0, 1.5, 9.1
  // the idea that a two-dimensional array is a "rectangle" is just our visualization
  // to the computer, it is all just memory from location 0 to location n....
```

## Statements

You should be familiar with while loops, for loops, and if statements.

```cpp
int x = 0;
while (x < 10) {
  cout << x;
  x++;
}

for (int i = 0; i < 10; i++) { // this is just shorthand for while loop
  cout << i;
}

if (a < b) {
  
} else {

}

int y = 0;
do {            // this one always executes once
  cout << y;
} while (y++ < 10);
```

## What you should learn

### Portable Types

```cpp
  uint8_t a; // 8 bit value can hold 0 to 255
  uint16_t b; // 16 bit value can hold 0 to 65535
  uint32_t c; // 32 bit value can  hold 0 to 4294967295
  uint64_t d; // 0 to 18,446,744,073,709,551,615
  int8_t e;   // signed 8-bit -128 to 127
  int16_t f;  // signed 16-bit -32768 to 32767
  int32_t g;  // signed 32-bit -2,147,483,648 to 2,147,483,647
  int64_t h;  // -9223372036854775808 to 9223372036854775807
```

### Hardware Terminology

1. Bus
1. Address bus
1. Data bus
1. cache
1. RAM
1. burst mode
1. core

### Pointers and Memory

A pointer is a location in memory. Usually displayed in hex, you can
think of it as an unsigned integer.

Think of your computer's memory as a single block of memory from 0 to max.

In this course we are going to look at memory and how it works. How understanding memory accesses can let you optimize your program.