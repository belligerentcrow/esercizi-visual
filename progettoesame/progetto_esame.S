x0				dcd		1
x1				dcd		0
y0				dcd		1
y1				dcd		0
				
res				fill		16
				
				mov		r0, #x0	; r0 = x0
				ldr		r0, [r0]
				mov		r1, #x1	; r1 = x1
				ldr		r1, [r1]
				
				mov		r2, #y0	; r2 = y0
				ldr		r2, [r2]
				mov		r3, #y1	; r3 = y1
				ldr		r3, [r3]
				
				mov		r4, #0 	; r4 = res momentaneo
				
				mov		r6, #res
				
				
half_adder
				EOR		r4, r0, r2
				str		r4, [r6]		; led0 - in output
				add		r6, r6, #4
				
				
				AND		r11, r0, r2 ; r11 = carry
				
full_adder
				EOR		r5, r1, r3
				EOR		r7, r5, r11
				str		r7, [r6] 		; led1 - in output
				add		r6, r6, #4
				;usabili:	r5, r7, r8
				AND		r5, r1, r3		; x1 && y1 -> r5
				AND		r7, r1, r11		; x1 && carry -> r7
				AND		r8, r3, r11		; y1 && carry -> r8
				
				ORR		r9, r5, r7
				ORR		r10, r9, r8
				str		r10, [r6]		; led2 - in output
				
				mov		r10, #2 ; quanti cicli (3-1)
				mov		r5, #0
				mov		r9, #0
				mov		r6, #res
				ldr		r4, [r6]
				add		r12, r12, r4	; bit0 aggiunto
				add		r6, r6, #4
output_decimale	;r4 = bit0, r7 = bit1, r10 = bit2	// r12 res
				cmp		r10, #0
				beq		end_prog
				ldr		r4, [r6]		;prendo il bit (dal più piccolo)
				add		r6, r6, #4		;sposto il puntatore alla locazione successiva
				
				add		r5, r5, #2		;r5 = conto potenza 
				add		r9, r9, r5
				
				sub		r10, r10, #1
				cmp		r4, #0
				beq		prox
loop_prodotto
				cmp		r9, #0
				beq		output_decimale
				add		r12, r12, r4
				sub		r9, r9, #1
				b		loop_prodotto
prox
				mov		r9, #0
				b		output_decimale
				
end_prog
				str		r12, [r6]
				end
				
				
				
