			;		5) Conteggio occorrenze in array
arr			dcd		57, 3, 1, 5, 6, 3, 4, 9, 3, 10, 4, 3
size			dcd		12
occorrenze	fill		4
elfind		dcd		3
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r3, #elfind
			ldr		r3, [r3]
			mov		r7, #occorrenze
			mov		r4, #0
loop
			cmp		r2, #0
			beq		end_prog
			
			cmp		r1, r3
			bne		not_equal
			add		r4, r4, #1
not_equal
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r2, r2, #1
			b		loop
			
end_prog
			str		r4, [r7]
			end
