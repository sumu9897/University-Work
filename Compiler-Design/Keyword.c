#include <stdio.h>
#include <string.h>




int main(){
int i,n,flag=0;
char key[32][10] = {"auto","break","case","char","const","continue","default","do",
"double","else","enum","extern","float","for","goto","if","int","long","register","return","short","signed","sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while"};
char str[20];




printf("Enter string: ");
scanf("%[^\n]s",str);



for(i = 0; i < 32; i++){



if(strcmp(str, key[i])==0)
flag=1;
}




if (flag)
printf(" '%s' is a Keyword \n", str);
else
printf(" '%s' is not a Keyword \n", str);
return 0;
}
