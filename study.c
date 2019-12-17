#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int add(int a, int b)
{
    return a + b;
}

int minus(int a, int b)
{
    return a - b;
}

int main(void)
{
    int (*fp)(int, int) = add;
    printf("%d", fp(3, 10));
    fp = minus;
    printf("%d", fp(3, 10));

    return 0;
}