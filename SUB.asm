.MODEL SMALL
.STACK 100H
.DATA
A DB 'TAKE INPUT1: $'
B DB 'TAKE INPUT2: $'
C DB 'ADD RESULT IS: $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;A
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    ;B
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H 
    
     ;C
    LEA DX,C
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    SUB BL,CL ;BL=BL+CL
    ADD BL,48
    MOV AH,2
    ;MOV BL,AL ;BL=AL
    ;MOV CL,AL ;CL=AL
   ;ADD BL,CL ;BL=BL+CL
    MOV DL,BL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN