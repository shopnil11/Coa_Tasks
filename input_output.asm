
.MODEL SMALL
.STACK 100H
.DATA
A DB 'WELCOME TO MY CALCULATOR! $'
B DB 'ENTER DIGIT1: $'
C DB 'ENTER DIGIT2: $'
X DB 'ENTER DIGIT3: $'
M4 DB '?'
D DB 'OUTPUT: $'
E DB 'THANK YOU $'
F DB 'GOOD DAY $'
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
    MOV BL,AL ;BL=AL,store 1st input in AL register.
    
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
    
    MOV AH,1
    INT 21H
    MOV CL,AL ;CL=AL,store 2nd input value in CL register.
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    ;X
    LEA DX,X
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
    MOV M4,AL ;M4=AL,store 2nd input value in CL register.
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    ;D
    LEA DX,D
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    MOV AH,2 ;J/OTHER
    MOV DL,BL
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    MOV AH,2 ;F/OTHER
    MOV DL,CL
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    MOV AH,2 ;K/OTHER
    MOV DL,M4
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    ;E
    LEA DX,E
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    ;F
    LEA DX,F
    MOV AH,9
    INT 21H
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN