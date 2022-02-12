		;		19) divisione per una costante data
		;		di tutti gli elementi di un array
		
arr		dcd		63, 59, 39, 44, 30, 52, 32, 58, 88, 12
size		dcd		10
nuovoarr	dcd		0, 0, 0, 0, 0, 0, 0, 0, 0, 0
costante	dcd		13
		
		mov		r0, #arr
		ldr		r1, [r0]
		mov		r2, #size
		ldr		r2, [r2]
		mov		r3, #costante
		ldr		r3, [r3]
		mov		r4, #nuovoarr
		mov		r6, #0
loop
		cmp		r2, #0
		beq		end_prog
		
		mov		r6, #0
		b		divisione
back
		str		r6, [r4]
		add		r4, r4, #4
		add		r0, r0, #4
		ldr		r1, [r0]
		sub		r2, r2, #1
		
		b		loop
		
divisione
		add		r6,r6, #1
		sub		r1, r1, r3
		cmp		r1, #0
		beq		back
		cmp		r1, #0
		blt		fix
		b		divisione
		
fix
		sub		r6, r6, #1
		b		back
		
end_prog
		end
