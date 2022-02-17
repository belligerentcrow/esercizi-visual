			;		27) dato un array calcolare
			;		a[0] + a[1] - a[2] + a[3] - a[4] + a[5] - ...
			
arr			dcd		10, 10, 2, 5, 3, 10, 4, 8, 9, 2
size			dcd		10
ris			fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r7, #ris
			mov		r3, r1
			mov		r4, #0
			
loop
			cmp		r2, #0
			beq		fine_prog
			
			cmp		r4, #0
			beq		somma
			
			cmp		r4, #1
			beq		sottrazione
back
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r2, r2, #1
			b		loop
			
somma
			add		r3, r3, r1
			mov		r4, #1
			b		back
			
sottrazione
			sub		r3, r3, r1
			mov		r4, #0
			b		back
			
fine_prog
			str		r3, [r7]
			end
