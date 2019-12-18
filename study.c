#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

typedef struct
{
    char studentId[10];
    char name[10];
    int grade;
    char major[100];
} Student;

int main(void)
{
    Student s = {"20191212", "문현규", 7, "Computer"};

    printf("%s\n", s.studentId);
    printf("%s\n", s.name);
    printf("%d\n", s.grade);
    printf("%s\n", s.major);

    return 0;
}