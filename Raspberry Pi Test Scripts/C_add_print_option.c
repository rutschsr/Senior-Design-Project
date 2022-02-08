
#include <stdio.h>
#include <time.h>
	
int main() {
	long i = 2147483646;
	printf("Start");

	time_t t;
	time_t time1=0;

  time ( &t );
  printf ( "Current local time and date: %s\n", ctime(&t));
  time1=t;

	while (i > 0 ) {

	//	printf("%d\n", i);
		i--;
	}
	printf("End  ");
	
time ( &t );
 // timeinfo = localtime ( &rawtime );
   printf ( "Current local time and date: %s\n", ctime(&time1);
  printf ( "Current local time and date: %s\n", ctime(&t));
}
