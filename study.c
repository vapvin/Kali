#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main(void)
{
    int a = 5;
    int *b = &a;

    printf("%d \n", a);
    printf("%d \n", *b);

    return 0;
}