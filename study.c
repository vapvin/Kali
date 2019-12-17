#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int *a = malloc(sizeof(int));
    printf("%d", a);
    *a = malloc(sizeof(int));
    printf("%d", a);

    return 0;
}