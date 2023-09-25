.MODEL SMALL 
.STACK 100H
.DATA 
A DB 0AH, 0DH, 'POSITIVE $'
B DB 0AH, 0DH, 'NEGATIVE $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,34H
    MOV BL,33H
    
    CMP AL,BL
    JLE IF
    
    
    IF:
    MOV AH,2
    MOV DL,AL 
    INT 21H
    
    
    JMP EXIT
    
    ELSE:
    MOV AH,2
    MOV DL,BL 
    INT 21H
    
    
    JMP EXIT
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN