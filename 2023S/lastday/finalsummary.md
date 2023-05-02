# CPE390 Final 2023S - Thursday May 11 (1:00PM-4:00PM)

## Basic Coding C++

* integer data types
  * operators + - * / %  unary -
  * 2s complement arithmetic
    * $3 = 00000011 ; -3 = 11111101$
  * $2^8=256; 2^{15}=32768; 2^{16} = 65536$ will be given
  * `uint8_t a = 2 - 3; // a = -1 = 111111111`
  * and (&) , or ( | ) , XOR (^) , left shift (<<) , right shift (>>)

* Float/Double
  * Roundoff Error
  * inf/nan
  * Hand Optimization (what the compiler won't do)
    * $c_1*x*c_2==>(c_1*c_2)*x$
    * $c_1*\frac{x}{c_2}==>(\frac{c_1}{c_2})*x$
  * Compiler Optimization
    * $ \frac{x}{2^y} ==> x >> y$
    * $ i\ \%\ 64 ==> i\ \&\ 63 $

* Calling Functions
  * Including how parameters are passed in registers (Integers + Floating Points)
  * The stack

## x86 Assembler

* Integer Instructions
* Indexing Modes (load from/ store to memory)
* Bit Operations

## From Exam 1

* Bit Operation Calculations
* Integer Size, Overflow
* Write Basic Assembler/C++ functions
  * Loops
  * Arrays
  * If Statements
  * Masking

## Important Things To Remember

* Assembler functions always return in %rax
* Remember order of operations
