#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

void myFunction(void)
{
    printf("Hello My Function");
}

void yourFunction(void)
{
    printf("Hello Your Function");
}

int main(void)
{
    void(*fp()) = myFunction;
    fp();

    fp = yourFunction;
    fp();

    return 0;
}