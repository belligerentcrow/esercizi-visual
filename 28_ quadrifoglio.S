			;		28) dato un array A di dimensione N,
			;		determinare l'indice k che contiene un elemento dato,
			;		e copiare, su un nuovo vettore, gli elementi da K a N-1
arr			dcd		4, 10, 21, 1, 3, 24, 13, 60, 2, 5, 11, 30
sizeN		dcd		12
eldato		dcd		3
nuovoarr		dcd		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #sizeN
			ldr		r2, [r2]
			mov		r3, #eldato
			ldr		r3, [r3]
			mov		r4, #nuovoarr
			mov		r5, #0
			
loop
			cmp		r2, #0
			beq		fine
			
			cmp		r1, r3
			beq		trovatoK
back1
			cmp		r5, #1
			beq		copiainarr
back2
			sub		r2, r2, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			add		r4, r4, #4
			b		loop
			
trovatoK
			mov		r5, #1
			b		back1
			
copiainarr
			str		r1, [r4]
			b		back2
			
fine
			end
