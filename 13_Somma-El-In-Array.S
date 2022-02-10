			;		13) somma di elementi in array
			
arr			dcd		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
size			dcd		12
res			fill		4
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2,[r2]
			mov		r3, #0
			mov		r4, #res
			
loop
			cmp		r2, #0
			beq		fine_ciclo
			add		r3, r3, r1
			sub		r2, r2, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			b		loop
fine_ciclo
			str		r3, [r4]
			end
