#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

struct Student
{
    char studentId[10];
    char name[10];
    int grade;
    char major[100];
};

int main(void)
{
    struct Student s;
    strcpy(s.studentId, "20190317");
    strcpy(s.name, "문현규");
    strcpy(s.major, "Computer");
    s.grade = 98;

    printf("%s\n", s.studentId);
    printf("%s\n", s.name);
    printf("%d\n", s.grade);
    printf("%s\n", s.major);

    return 0;
}