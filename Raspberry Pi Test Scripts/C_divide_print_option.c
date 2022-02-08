#include <stdio.h>
int main() {
	int i = 10000000;
	printf("Start");
	
	time_t t;
	time_t time1=0;

  	time ( &t );
  	printf ( "Current local time and date: %s\n", ctime(&t));
  	time1=t;

	while (i > 1) {
		// printf("%d", i);
		i = i / 2;
	}
	printf("End");
	
	
	time ( &t );
	// timeinfo = localtime ( &rawtime );
  	printf ( "Current local time and date: %s\n", ctime(&time1));
  	printf ( "Current local time and date: %s\n", ctime(&t));
}
