# CPE 390 Midterm Overview

## C++ Basics

* #including iostream
* using namespace std
* int main()
* cout
* variables
* integer portable data types int*\_t, uint*\_t (8,16,32,64)
* g++

## Assembler Basics

* .globl
* Register names
* Register calling conventions
* which registers are scratch on the system you wrote on
  * which registers are used to pass parameters on your system
  * what you have to do to save registers before using them if they are not scratch
* Memory

## Binary Numbers

* What they look like
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
* Writing to memory
* Reading from memory
* memory indirection/indexed mode ie    mov %rcx, (%rdx)   rdx is the location in memory
* adding by the right size corresponding to the operation
