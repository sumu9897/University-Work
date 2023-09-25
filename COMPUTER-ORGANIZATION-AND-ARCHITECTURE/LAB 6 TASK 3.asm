;Put the sum 100 + 95 + 90 + ... + 5 in AX.

MOV AX,0
MOV BX,100
MOV CX,20

SUM:
ADD AX,BX
SUB BX,5

LOOP SUM




