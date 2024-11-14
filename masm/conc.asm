ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    MSG1 DB 200 DUP('$')
    MSG2 DB 200 DUP('$')
    RES DB 200 DUP('$')
    L1 DB ?
    L2 DB ?

DATA ENDS
CODE SEGMENT

    START:
        MOV AX, DATA
        MOV DS, AX
        LEA DX, MSG1
        MOV AH, 3FH
        INT 21H
        MOV CX, AL
        int 3
        LEA SI, MSG1
        LEA DI, RES
        DEC CX
        DEC CX

        LOOPI:
        MOV AL, [SI]
        MOV [DI], AL
        INC SI
        INC DI
        DEC CX
        JNZ LOOPI
        DEC CX
        LEA DX, MSG2
        MOV AH, 3FH
        INT 21H
        MOV CX, AL
        INT 3
        LEA SI, MSG2

        LOOPII:
        MOV AL, [SI]
        MOV [DI], AL
        INC SI
        INC DI
        DEC CX
        JNZ LOOPII
        LEA DX, [RES]
        MOV AH, 09H
        INT 21H
        MOV AH, 4CH
        INT 21H

CODE ENDS
END START