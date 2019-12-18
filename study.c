#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int add(int a, int b)
{
    return a + b;
}

int (*process(char *a))(int, int)
{
    printf("%s\n", a);
    return add;
}

int main(void)
{
    printf("%d", process("10과 20을 더한 값을 출력하여 보겠습니다.")(10, 20));

    return 0;
}