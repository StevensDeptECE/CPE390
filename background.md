# CPE390: Background

## Author: Dov Kruger

This document contains the material you are expected to know, either
from E116, or from AP computer science if you placed out of the intro
computer programming course.

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
  uint64_t b = 3;
  uint64_t c = 3 / 2 * 4; 
  
  
  //extra
  uint64_t x = b++;  // first c=b, then b++
  uint64_t y = ++b;
```

### Arrays

Arrays are a single block of memory. The name of the array is a pointer to the first location in the array

```cpp
  int a[10];
  float b[] = {1.5, 2.2, 3.4};  
```

## Statements

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
  uint8_t a;
  uint16_t b;
  uint32_t c;
  uint64_t d;
  int8_t e;
  int16_t f;
  int32_t g;
  int64_t h;
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

