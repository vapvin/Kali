#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct
{
    char name[20];
    int score;
} Student;

int main(void)
{
    int n, sum = 0;
    FILE *fp;
    fp = fopen("input.txt", "r");
    fscanf(fp, "%d", &n);
    Student *students = (Student *)malloc(sizeof(Student) * n);
    for (int i; i < n; i++)
    {
        fscanf(fp, "%s %d", &((students + i)->name), &((students + i)->score));
        printf("이름: %s, 성적: %d\n ", (students + i)->name, (students + i)->score);
    }

    return 0;
}