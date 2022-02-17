		;		26) dato un array e una costante k, determinare il numero
		;		di elementi minori di k e il numero di elementi maggiori di k,
		;		usando un solo loop
		
arr		dcd		3, 1, 45, 23, 9, 28, 70, 10, 11, 4, 8, 30
costante	dcd		20
size		dcd		12
ris		fill		8
		
		mov		r0, #arr
		ldr		r1, [r0]
		mov		r2, #size
		ldr		r2, [r2]
		mov		r3, #costante
		ldr		r3, [r3]
		mov		r4, #ris
		
		mov		r5, #0	; i < k
		mov		r6, #0	; i > k
		
loop
		cmp		r2, #0
		beq		fine_prog
		
		cmp		r1, r3
		blt		found_min
back1
		cmp		r1, r3
		bgt		found_max
back2
		add		r0, r0, #4
		sub		r2, r2, #1
		ldr		r1, [r0]
		b		loop
		
found_min
		add		r5, r5, #1
		b		back1
found_max
		add		r6, r6, #1
		b		back2
		
fine_prog
		str		r5, [r4]
		str		r6, [r4, #4]
		end
