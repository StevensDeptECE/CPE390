#include <iostream>
using namespace std;

int f1(int x) {
	if (x > 5)  
		return 3;
	else
		return 8;
}

/* equivalent assembler

   cmp r0, #5 
   ble 1f
   mov r0, #3
   bx  lr
1:
   mov r0, #8
   bx lr
 */

/* 
  faster way
  cmp   r0, #5
  movgt r0, #3
  movle r0, #8
  bx    lr
*/


int f1b(int x) {
	if (x > 5)
		return 3;
	return 8;
}

int f1c(int x) {
	if (x > 5) {
		return 3;
	} else {
		return 8;
	}
}


int whileloop(int n) {
	int sum = 0;
	while (n > 0) {
		sum += n;
		n--;
	}
	return sum;
}
/*
  mov r1, #0
  b 2f
1:
  add r1, r0 // sum = sum + n
  sub r0, #1 // n--

2:
  cmp r0, #0
  bne 1b
   mov r0, r1
   bx  lr

 */

/*
  mov r1, #0
  cmp r0, #0
  beq 2f
1:
  add r1, r0 // sum = sum + n
  subs r0, #1 // n-- and set the flags
  bne 1b
2:
   mov r0, r1
   bx  lr

 */

int forloop(int n) {
	int sum = 0;
	for ( ;n > 0; ) {
		sum += n;
		n--;
	}
	return sum;
}

int forloop(int n) { // r0 = n
	int sum = 0;
	for (int i = 1 ;i <= n; i++) {
		sum += i;
	}
	return sum;
}

/*
  mov r1, #0 // sum = 0
  
  mov r2, #1 // i= 1
1:
   add r1, r2 // sum += i
  add r2, #1  // i++
  cmp r2, r0
  ble 1b
  mov r0, r1
  bx  lr
 */

int dowhileloop(int n) {
	int sum = 0;
	do {
		sum += n; 
		n--;
	}	while(n > 0);
	return sum;
}




int main() {
	for (int i = 1; i <= 10; i++)
		;

	for (int i = 1; i <= 10; i++)
		;
}
	
