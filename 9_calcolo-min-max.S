			;		9) Calcolo del massimo e del minimo nello stesso ciclo
			
arr			dcd		4, 2, 6, 10, 73, 61, 57,-10, 30, 83, 93, -30
size			dcd		12
min			fill		4
max			fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r6, #min
			mov		r7, #max
			mov		r3, r1
			mov		r4, r1
loop
			cmp		r2, #0
			beq		fine_ciclo
			sub		r2, r2, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			
			cmp		r3, r1
			blt		swap_min
back
			cmp		r4, r1
			bgt		swap_max
			b		loop
swap_min
			mov		r3, r1
			
			b		back
swap_max
			mov		r4, r1
			b		loop
fine_ciclo
			str		r3, [r6]
			str		r4, [r7]
			end
