		;		17) copiare su un nuovo array tutti gli elementi
		;		di un array sorgente maggiori di una costante
		
arr		dcd		3, 6, 17, 32, 24, 4, 11, 44, 12, 37
size		dcd		10
result	dcd		0, 0, 0, 0, 0, 0, 0, 0, 0, 0
costante	dcd		10
		
		mov		r0, #arr
		ldr		r1, [r0]
		mov		r2, #size
		ldr		r2, [r2]
		mov		r3, #result
		mov		r4, #costante
		ldr		r4, [r4]
		
loop
		cmp		r2, #0
		beq		end_prog
		
		cmp		r1, r4
		bgt		copy_new
back
		add		r0, r0, #4
		add		r3, r3, #4
		sub		r2, r2, #1
		ldr		r1, [r0]
		b		loop
copy_new
		str		r1, [r3]
		b		back
		
end_prog
		end
