			;		4) Ricerca di un elemento in un array
			
arr			dcd		4, 6, 2, 0, 18, 55, 9, 38, 7, 94, 65
size			dcd		11
elfind		dcd		18
indexfound	fill		4
			mov		r6, #indexfound
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			
			mov		r3, #elfind
			ldr		r3, [r3]
			mov		r4, #0
			
loop
			cmp		r2, #0
			beq		not_found
			
			cmp		r1, r3
			beq		found
			
			add		r4, r4, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r2, r2, #1
			b		loop
			
			
found
			str		r4, [r6]
			end
not_found
			mov		r7, #-1
			str		r7, [r6]
			end
			
			
