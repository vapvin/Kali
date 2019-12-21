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

int brr[SIZE];

int counts = 0;

void plusBack(int data)
{
    brr[counts] = data;
    counts++;
}

void plusFirst(int data)
{
    for (int i = counts; i >= 1; i--)
    {
        brr[i] = brr[i - 1];
    }

    brr[0] = data;
    counts++;
}

void look()
{
    for (int i = 0; i < counts; i++)
    {
        printf("%d", brr[i]);
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
    printf("\n");
    plusBack(5);
    plusBack(8);
    plusBack(7);
    plusBack(2);
    plusBack(3);
    plusFirst(9);
    plusFirst(1);
    look();
    return 0;
}
