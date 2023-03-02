# CPE 390 Midterm Overview

## C++ Basics

* #including iostream
* using namespace std
* int main()
* cout
* Variables
* Integer portable data types int*\_t, uint*\_t (8,16,32,64)
* g++

## Assembler Basics

* .globl
* Register names
* Register calling conventions
* Which registers are scratch on the system you wrote on
  * Which registers are used to pass parameters on your system and in what order
  * What can you do to use non-scratch registers without faulting
* Function naming conventions
* Memory reliance

## Binary Numbers

* What do they look like
* Convert between Hex, Binary, and Decimal
* Signed vs Unsigned integers
* 2S-Complement

## Basic Operators (C++ and Assembler)

* Move values between variables/registers
* Addition
* Subtraction
* Multiplication
* Division
* Modulus
* And
* Or
* Not
* Xor
* Shift Right
* Shift Left
* Rotate Right
* Rotate Left

## Complex Operators (C++ and Assembler)

* For loops
* If Statements
* Arrays
* Function calls

## Stack/Memory

* Push
* Pop
* Writing to memory/Reading from memory
  * Memory indirection/indexed mode ie -- mov %rcx, (%rdx) -- rdx is the location in memory
  * Adding the right size to memory allocations corresponding to the operation
