			;		2) calcolo del massimo
			
arr			dcd		4, 1, 0, 45, 84, 60, 38, 2, 5, 3
size			dcd		10
			
			mov		r0, #arr
			ldr		r1, [r0]
			
			mov		r2, #size
			ldr		r2, [r2]
			ldr		r3, [r0, #4]
			
loop
			cmp		r2, #0
			beq		end_prog
			cmp		r1, r3
			blt		max_not_found
			
			
			mov		r3, r1
			
max_not_found
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r2, r2, #1
			b		loop
			
end_prog
			end
			
			
			
