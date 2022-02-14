		;		22) a partire da un vettore sorgente A,
		;		costruire un nuovo vettore B in cui b[i]= a[i] + a[i+1]
		
arr		dcd		3, 20, 19, 10, 8, 3, 7, 5, 10, 12
size		dcd		10
nuovo	dcd		0, 0, 0, 0, 0, 0, 0, 0, 0
		
		mov		r0, #arr
		ldr		r1, [r0]
		mov		r2, #size
		ldr		r2, [r2]
		sub		r2, r2, #1
		mov		r3, #nuovo
		
loop
		cmp		r2, #0
		beq		prog_end
		
		ldr		r4, [r0,#4]
		add		r5, r1, r4
		str		r5, [r3]
		
		add		r0, r0, #4
		ldr		r1, [r0]
		sub		r2, r2, #1
		add		r3, r3, #4
		b		loop
prog_end
		end
