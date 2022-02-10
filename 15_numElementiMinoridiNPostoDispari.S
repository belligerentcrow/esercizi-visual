		;15)		contare il numero di elementi minori di una costante data,
		;considerando	solo gli elementi di posto dispari (a partire da 0)
		
arr		dcd		1, 4, 5, 82, 25, 77, 55, 2, 50, 8, 3, 48
halfsize	dcd		6
costante	dcd		10
res		fill		4
		
		mov		r0, #arr
		ldr		r1, [r0]
		mov		r2, #halfsize
		ldr		r2, [r2]
		mov		r3, #costante
		ldr		r3, [r3]
		mov		r4, #0
		mov		r9, #res
		
loop
		cmp		r2, #0
		beq		end_prog
		
		cmp		r1, r3
		blt		el_minore
back
		sub		r2, r2, #1
		add		r0, r0, #8
		ldr		r1, [r0]
		b		loop
el_minore
		add		r4, r4, #1
		b		back
		
end_prog
		str		r4, [r9]
		end
