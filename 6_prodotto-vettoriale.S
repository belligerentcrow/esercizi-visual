			;		6) prodotto vettoriale
			
arr1			dcd		2, 4, 5, 2, 1, 6, 8
arr2			dcd		3, 4, 6, 1, 5, 6, 1
res			dcd		0, 0, 0, 0, 0, 0, 0
size			dcd		7
			
			mov		r0, #arr1
			ldr		r1, [r0]
			mov		r2, #arr2
			ldr		r3, [r2]
			mov		r4, #0
			mov		r7, #res
			mov		r5, #size
			ldr		r5, [r5]
			
loop_check
			cmp		r5, #0
			beq		end_prog
			
			cmp		r1, #0
			beq		end_iesim
loop_inner
			cmp		r3, #0
			beq		end_iesim
			
			add		r4, r4, r1
			sub		r3, r3, #1
			b		loop_inner
			
end_iesim
			str		r4, [r7]
			add		r7, r7, #4
			sub		r5, r5, #1
			add		r0, r0, #4
			ldr		r1, [r0]
			add		r2, r2, #4
			ldr		r3, [r2]
			mov		r4, #0
			b		loop_check
			
			
end_prog
			end
			
