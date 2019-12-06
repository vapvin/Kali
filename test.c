#include <stdio.h>
#define _CRT_SECURE_NO_WRANINGS

int calculator(int a, int b)
{
	printf("%d + %d = %d \n", a, b, a + b);
	printf("%d - %d = %d \n", a, b, a - b);
	printf("%d * %d = %d \n", a, b, a * b);
	printf("%d / %d = %d \n", a, b, a / b);
	printf("\n");
}

int nextcalculator(int a, int b)
{
}

int main(void)
{
	nextcalculator(88, 99);
	nextcalculator(117, 4567);
	nextcalculator(7832457, 45578);

	system("pause");

	return 0;
}
