;Take an input character from user. Check it for letter and convert upper to lower or lower to upper using logical instructions.


MOV BL, 00100000B
MOV Ah,1
INT 21H
MOV DL,AL
CMP DL,061H
JGE COMPA 
JMP UPPER


COMPA:
CMP DL,07AH
JLE COMPZ
JMP EXIT 

COMPZ:    
XOR DL,BL
MOV AH,2
INT 21H 
JMP EXIT
 
UPPER:  
CMP DL,041H
JGE COMPAL
JMP EXIT

COMPAL:
CMP DL,05AH
JLE COMPZL
JMP EXIT  

COMPZL:    
XOR DL,BL
MOV AH,2
INT 21H   
JMP EXIT
    
EXIT:
MOV AH,04CH
INT 21H
