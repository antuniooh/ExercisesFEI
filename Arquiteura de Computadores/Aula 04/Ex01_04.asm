;zera a ram interna

ZERAR:
CLR A; A = 0
MOV R0, #127; R0 endere�o mais alto

ROT:
MOV @R0, A; zera a posi��o apontada por r0
DJNZ R0, ROT; decerementa o ponteiro e o contador
RET; retorna

;1 MC
;1 MC
;1 MC (la�o)
;2 MC (la�o)
;2 MC

;4 + 127*3 = 385