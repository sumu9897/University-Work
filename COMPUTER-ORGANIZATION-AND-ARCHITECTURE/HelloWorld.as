.MODEL SMALL
.STACK 100H
.DATA
A DB 0AH,0DH, 'Hello World$ '


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    
   PRINT :         
    MOV AH,9
    LEA DX, A
    INT 21H
    
    JMP PRINT
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

