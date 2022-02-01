
#include <stdio.h>
#include <time.h>
	
int main() {
	long i = 2147483646;
	printf("Start");

	time_t rawtime;
	long time1=0;

  time ( &rawtime );
  printf ( "Current local time and date: %d\n", rawtime);
  time1=rawtime;

	while (i > 0 ) {

	//	printf("%d\n", i);
		i--;
	}
	printf("End  ");
	
time ( &rawtime );
 // timeinfo = localtime ( &rawtime );
   printf ( "Current local time and date: %d\n", time1);
  printf ( "Current local time and date: %d\n", rawtime);
}
