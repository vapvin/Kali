#include <stdio.h>

int calculator(int a, int b) {
	printf("%d + %d = %d \n", a, b, a + b);
	printf("%d - %d = %d \n", a, b, a - b);
	printf("%d * %d = %d \n", a, b, a * b);
	printf("%d / %d = %d \n", a, b, a / b);
}

int main(void) {
	calculator(78, 509);

	return 0;
}


