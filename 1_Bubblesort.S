			
			;		1) BubbleSort (again)
			
arr			dcd		38, 0, 3, 2, 1, 9, 8, 73, 5, 4
size			dcd		10
			
			mov		r1, #size
			ldr		r0, [r1]	;R0: size
			
outer_loop
			mov		r1, #arr	;R1: array ptr
			mov		r2, r0	;R2: el arr
			mov		r3, #0	;R3: flag
inner_loop
			cmp		r2, #1
			beq		end_inner_loop
			
			ldr		r4, [r1]
			ldr		r5, [r1, #4]
			
			cmp		r4, r5
			blt		do_not_swap
			
			str		r5, [r1]
			str		r4, [r1, #4]
			mov		r3, #1
			
do_not_swap
			add		r1, r1, #4
			sub		r2, r2, #1
			b		inner_loop
			
end_inner_loop
			cmp		r3, #0
			bne		outer_loop
			end
			
