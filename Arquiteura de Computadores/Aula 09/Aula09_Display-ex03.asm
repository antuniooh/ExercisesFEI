start:
	MOV R2, #10
ROT:
	MOV A, R2
	DEC A	
	CALL DEC7SEG	; Chama a subrotina DEC7SEG
	CALL delay		; Chama a subrotina delay
	DJNZ R2, ROT
	JMP start		; Salta para o start

delay:
	MOV R0, #250
	DJNZ R0, $
	RET

DEC7SEG: 
	MOV DPTR,#TABELA ;DPTR = in�cio da tabela de c�digos
 	MOVC A,@A+DPTR 	 ;l� a tabela da mem�ria de programa
	MOV P1,A 		 ;escreve c�digo na porta P1
 	RET

;Tabela (mem�ria de programa) com os c�digos para o display
; 0 1 2 3 4 5 6 7 8 9
TABELA: 
	DB 0C0H, 0F9H, 0A4H, 0B0H, 99H, 92H, 83H, 0F8H, 80H, 98H 

