void f(int i);
int main() {
    for (int i = 0; i < 10; i++)
      f(i);

    /*
    pushq %r9

    mov $10, %r9
loop:
    mov %r9, %rcx
    call f
    subq $1, %r9   
    cmpq $0, %r9
    jb   loop
   
      popq %r9
    */



}