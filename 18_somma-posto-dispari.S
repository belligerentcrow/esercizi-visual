		;		18) somma degli elementi di posto dispari di un array
		
arr		dcd		2, 4, 1, 5, 40, 28, 18, 12, 4, 3, 5, 4, 1
size		dcd		13
res		fill		4
		
		mov		r0, #arr
		ldr		r1, [r0, #4]!
		mov		r2, #size
		ldr		r2, [r2]
		sub		r2, r2, #1
		mov		r3, #0
		mov		r7, #res
		
loop
		cmp		r2, #0
		beq		end_prog
		add		r3, r3, r1
		sub		r2, r2, #2
		add		r0, r0, #8
		ldr		r1, [r0]
		b		loop
end_prog
		str		r3, [r7]
		end
		
		
