#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS
#define SIZE 1000
#define ll long long
#define ld long double
#define INF 10000

int arr[INF];

int count = 0;

void addBack(int data)
{
    arr[count] = data;
    count++;
}

void addFirst(int data)
{
    for (int i = count; i >= 1; i--)
    {
        arr[i] = arr[i - 1];
    }
    arr[0] = data;
    count++;
}

void show()
{
    for (int i = 0; i < count; i++)
    {
        printf("%d", arr[i]);
    }
}

int main(void)
{
    addBack(5);
    addBack(8);
    addBack(7);
    addBack(2);
    addBack(3);
    addFirst(9);
    addFirst(1);
    show();
    return 0;
}