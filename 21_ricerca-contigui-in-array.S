			;		21) ricerca su un array di una coppia di elementi
			;		contigui, i cui valori sono memorizzati su R5 e R6
			
			mov		r5, #10
			mov		r6, #49
			
arr			dcd		58, 21, 4, 30, 32, 10, 49, 18, 27, 3
size			dcd		10
flag_found	fill		4
index_found	fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r4, #0
			mov		r8, #flag_found
			mov		r9, #index_found
loop
			cmp		r2, #0
			beq		end_prog
			
			cmp		r1, r5
			bne		not_found
			
			ldr		r3, [r0, #4]	;r3 = elemento successivo a r1
			cmp		r3, r6
			bne		not_found
			
			mov		r7, #1 ;;flag "trovato"
			str		r7, [r8]
			str		r4, [r9]  ;;index_found
			b		end_prog
not_found
			add		r0, r0, #4
			add		r4, r4, #1	;counter per indice
			ldr		r1, [r0]
			sub		r2, r2, #1
			b		loop
end_prog
			end
