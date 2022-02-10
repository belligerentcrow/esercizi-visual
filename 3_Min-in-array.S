			;		3) Calcolo del minimo in un array
			
arr			dcd		-23, -11, 60, 3,-1, 1, 59, 5, 9, 44, 3
size			dcd		11
			
			mov		r0, #arr
			ldr		r1, [r0]
			
			mov		r2, #size
			ldr		r2, [r2]
			
			ldr		r3, [r0, #4]
			
loop
			cmp		r2, #0
			beq		end_prog
			
			cmp		r1, r3 ; 
			bgt		min_not_found
			
			mov		r3, r1
			
min_not_found
			add		r0, r0, #4
			sub		r2, r2, #1
			ldr		r1, [r0]
			b		loop
			
end_prog
			end
