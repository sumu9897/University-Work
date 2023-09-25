;Read a character and display it 50 times on the next line. 

.MODEL SMALL 
.STACK 100H
.DATA 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
