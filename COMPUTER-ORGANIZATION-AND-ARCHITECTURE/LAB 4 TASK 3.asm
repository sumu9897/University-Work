;Read an integer from user. Check whether the number is positive or negative.


.MODEL SMALL 
.STACK 100H
.DATA    
MSG DB 'Enter a number: $'
A DB 10, 13, 'POSITIVE $'
B DB 10, 13, 'NEGATIVE $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    CMP BH,30H
    JG POS
    JL NEGA
    JE EXIT
    
    POS:
    MOV AH,9
    LEA DX,A
    INT 21H
    
    JMP EXIT
    
    NEGA:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    JMP EXIT
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
