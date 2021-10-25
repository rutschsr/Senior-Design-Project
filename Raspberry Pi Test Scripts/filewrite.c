#include <stdio.h>

main() {
    FILE *fp;
    fp = fopen("output.txt","w+");
    int n = 100000000;
    
    for(int i = 0; i < n; i++) {
       fputs("r\n", fp);
    }
    
}
