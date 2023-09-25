;Write an assembly program to print all the ASCII code from 0 to 255.
MOV BL,0
MOV CX,255

PRINT: 
MOV AH,2
MOV DL,BL
INT 21H

INC BL
LOOP PRINT
