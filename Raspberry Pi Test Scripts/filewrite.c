#include <stdio.h>

main() {
    FILE *fopen("/output.txt","w+");
    int n = 1000;
    
    for(int i = 0; i < 1000; i++) {
       fputs("r\n", fopen);
    }
    
}
