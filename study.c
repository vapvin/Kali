#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define SIZE 1000

int main(void)
{
    char a[SIZE]; // 매크로를 통한 사이즈 배열의 크기를 1000만큼 할당해 줌

    scanf("%s", &a[SIZE]); // 스캔을 통해 값을 입력받고
    printf("%s", a[SIZE]); // 입력받은 값을 출력
    return 0;
}
