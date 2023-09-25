;Read a character and display it 50 times on the next line.
.MODEL SMALL
.STACK 100H
.DATA
    VAR1 DB "ENTER A CHARACTER: $"
    A DB 10,13,10,13, "Thank you. $ "
.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    MOV AH,9
    LEA DX,VAR1
    INT 21H

    MOV AH,1            
    INT 21H
    MOV BL,AL

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV CX,50

    PRINT:
    MOV AH,2
    MOV DL,BL
    INT 21H    
    DEC CX
    JNZ PRINT    
             
    EXIT:
    
    MOV AH,9
    LEA DX,A
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
