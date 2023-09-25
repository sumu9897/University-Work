;Put the sum of the first 50 terms of the arithmetic sequence 1, 5, 9, 13, ... in DX.
MOV CX,50
MOV DX,0

MOV AX,1

SUM:

ADD DX,AX
ADD AX,4
LOOP SUM
