#include <stdio.h>

extern long long int test();
extern long long int lab02d(long long int a);

int main(void)
{
	test();
	long long int temp = lab02d(79);
	printf("The integer is %lld", temp);
    return 0;
}
