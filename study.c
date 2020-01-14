#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h> // 전처리 구문을 통한 헤더파일을 불러옴
#include <string.h>
#include <stdlib.h>
#define SIZE 1000

int main(void)
{
    char a[SIZE]; // 매크로를 통한 사이즈 배열의 크기를 1000만큼 할당해 줌

    int b = add(5, 8);
    int c = add(9, 4);

    printf("%d %d", b, c);

    scanf("%s", &a[SIZE]); // 스캔을 통해 값을 입력받고
    printf("%s", a[SIZE]); // 입력받은 값을 출력
    return 0;
}

int add(int a, int b)
{
    return a + b;
}

// 이후 디버깅을 통한 어셈블리 동작을 확인