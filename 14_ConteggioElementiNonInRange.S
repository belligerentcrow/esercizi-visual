			;		14) conteggio di elementi in un array che
			;		non sono compresi in un intervallo dato
			
arr			dcd		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
size			dcd		15
ElmA			dcd		5
ElmB			dcd		11
res			fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r3, #ElmA
			ldr		r3, [r3]
			mov		r4, #ElmB
			ldr		r4, [r4]
			mov		r5, #0
			mov		r9, #res
			
loop
			cmp		r2, #0
			beq		fine_ciclo
			
			cmp		r1, r3
			blt		not_in_range
			
			cmp		r1, r4
			bgt		not_in_range
			
back
			sub		r2, r2, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			b		loop
			
not_in_range
			add		r5, r5, #1
			b		back
fine_ciclo
			str		r5,[r9]
			end
