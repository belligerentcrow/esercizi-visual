			;		25) dato un array con un numero N di elementi, con N pari,
			;		calcolare le somme degli elementi da 0 a (n/2)-1, e da n/2 a n
			
arr			dcd		2, 4, 5, 3, 10, 2, 4, 5, 3, 11
numbr		dcd		10
ris			fill		8
			
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #numbr
			ldr		r2, [r2]
			mov		r5, #ris
			mov		r8, #1
			
			cmp		r2, #0
			beq		fine_prog
			mov		r6, r2
			lsr		r6, r6, #1	;r6 = n/2
			mov		r7, r6
			sub		r7, r7, #1	;r7 = (n/2)-1
			
loop_sum
			cmp		r6, #0
			beq		switch_things
back
			add		r3, r3, r1
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r6, r6, #1
			b		loop_sum
			
switch_things
			str		r3, [r5]
			cmp		r8, #0
			beq		fine_prog
			
			add		r5, r5, #4
			mov		r6, r7
			mov		r3, #0
			sub		r8, r8, #1
			add		r6, r6, #1
			b		back
			
fine_prog
			end
