#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

bool isOperator(char ch)
{
    if (ch == '+' || ch == '-' || ch == '*' ||
        ch == '/' || ch == '>' || ch == '<' ||
        ch == '=')
        return (true);
    return (false);
}


void parse(char* str)
{
    int left = 0, right = 0;
    int len = strlen(str);

    while (right <= len && left <= right)
    {
        if (isOperator(str[right]) == true)
            printf("'%c' IS AN OPERATOR\n", str[right]);

            right++;
            left = right;



    }
    return;
}


int main()
{
    char str[100];
    printf("Enter your String : ");
scanf("%s",str);
printf("");
    parse(str);

    return (0);
}
