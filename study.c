#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main(void)
{
    int a[] = {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
    };

    int *b = a;

    printf("%d", b[2]);

    return 0;
}