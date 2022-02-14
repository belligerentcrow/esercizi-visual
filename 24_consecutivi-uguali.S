			;		24) verificare se un vettore contiene
			;		almeno 2 elementi consecutivi uguali
			
arr			dcd		3, 32, 12, 4, 1, 39, 29, 1, 10, 3, 4, 12
size			dcd		12
boolean_answer	fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			ldr		r3, [r0, #4]
			mov		r2, #size
			ldr		r2, [r2]
			sub		r2, r2, #1
			mov		r6, #boolean_answer
loop
			cmp		r2, #0
			beq		not_found
			
			cmp		r1, r3
			beq		found
			
			add		r0, r0, #4
			ldr		r1, [r0]
			ldr		r3, [r0, #4]
			sub		r2, r2, #1
			b		loop
			
not_found
			mov		r7, #0
			str		r7, [r6]
			end
			
found
			mov		r7, #1
			str		r7, [r6]
			end
