#include <stdio.h>

extern int multiply_add(int a, int b, int c);

int main(void) {
    printf("Result = %d\n", multiply_add(5, 4, 10));
    return 0;
}