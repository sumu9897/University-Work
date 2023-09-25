;Take an input character from user. Check it for number and find whether it is odd or even using TEST instruction.
.MODEL SMALL
.STACK 100H  
.DATA
EVENd DW 0AH,0DH,'EVEN NUMBER$'
ODDd DW 0AH,0DH,'ODD NUMBER$'
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
      
    MOV AH,1
    INT 21H
    MOV DL,AL
    CMP DL,030H
    JGE COMPA 
    JMP EXIT 
    
    COMPA:
    CMP DL,039H
    JLE COMPZ
    JMP EXIT
    
    COMPZ:
    TEST DL,1
    JZ EVEN
    JMP ODD
    
    EVEN:
    LEA DX,EVENd
    MOV AH,09H
    INT 21H
    JMP EXIT
    
    ODD:
    LEA DX,ODDd
    MOV AH,09H
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,04CH
    INT 21H
    MAIN ENDP
END MAIN
