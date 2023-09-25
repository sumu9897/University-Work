#include <stdio.h>
#include <stdlib.h>
#define MAXINPUT 100

int main()
{
    char n[MAXINPUT]="";
    int length,i;

    printf("Input a Character : ");
    scanf ("%s",n);
    length=strlen(n);
    for (i=0;i<length;i++)
        if(!isdigit(n[i]))
        {
            printf("\nNot Numeric\n");
            return 1;
        }
    printf("\nNumeric Constant\n");
    return 0;
}
