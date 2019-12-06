#include <stdio.h>

int calculator(int a, int b) {
	printf("%d + %d = %d \n", a, b, a + b);
	printf("%d - %d = %d \n", a, b, a - b);
	printf("%d * %d = %d \n", a, b, a * b);
	printf("%d / %d = %d \n", a, b, a / b);
	printf("\n");
}

int main(void) {
	calculator(88, 99);
	calculator(117, 4567);
	calculator(7832457,45578);
	
	system("pause");

	return 0;
}



