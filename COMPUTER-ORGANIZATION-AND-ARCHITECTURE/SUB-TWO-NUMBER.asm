;take input two number from user and sub this two number
.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 'THE SUM OF $'
 MSG1 DB ' $'
 MSG2 DB 'AND $'
 MSG3 DB 'IS $'
 
 .CODE
 MAIN PROC
    
    MOV DL,'?'
    MOV AH,2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    LEA DX,MSG1 
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H  
    
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    SUB BL,CL
    
    
    
    ADD BL,48D
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    
     
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN 
