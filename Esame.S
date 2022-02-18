			;		dati due array a e b di dimensioni uguali,
			;		determinare se a[i] < b[i] per ogni i
			
arr			dcd		1, 4, 5, 6, 7, 8
arr2			dcd		0, 3, 4, 5, 6, 9
size			dcd		6
ris			fill		4
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r6, r2
			mov		r3, #arr2
			ldr		r4, [r3]
			mov		r5, #0
			mov		r8, #ris
			
loop
			cmp		r2, #0
			beq		fine_prog
			
			cmp		r1, r4
			bgt		not_fulfilled
			
back
			add		r0, r0, #4
			ldr		r1, [r0]
			sub		r2, r2, #1
			add		r3, r3, #4
			ldr		r4, [r3]
			b		loop
			
not_fulfilled
			add		r5, r5, #1
			b		back
			
fine_prog
			cmp		r6, r5
			beq		condition_true
			end
			
condition_true
			mov		r9, #1
			str		r9, [r8]
			mov		r5, #-1
			b		fine_prog
