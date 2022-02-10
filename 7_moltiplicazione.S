		;		7) Moltiplicazione
		
n1		dcd		49
n2		dcd		2
res		fill		4
		
		mov		r0, #n1
		ldr		r0, [r0]
		mov		r1, #n2
		ldr		r1, [r1]
		mov		r2, #0
		mov		r6, #res
		
		cmp		r0, #0
		beq		end_prog
		
		
loop
		cmp		r1, #0
		beq		end_prog
		
		add		r4, r4, r0
		sub		r1, r1, #1
		b		loop
		
end_prog
		str		r4, [r6]
		end
