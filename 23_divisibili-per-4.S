			;		23) a partire da un vettore sorgente A,
			;		costruire un nuovo vettore B che contiene solo
			;		gli elementi di A divisibili per 4
			
arr			dcd		3, 10, 16, 30, 32, 24, 18, 33, 40, 80, 12, 17
size			dcd		12
nuovoarr		dcd		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			
			mov		r0, #arr
			ldr		r1, [r0]
			mov		r2, #size
			ldr		r2, [r2]
			mov		r3, #nuovoarr
			mov		r4, #4
			mov		r5, #0
loop
			cmp		r2, #0
			beq		end_prog
			
			cmp		r1, #0
			beq		skip
			mov		r5, r1
			
divide
			cmp		r5, #0
			blt		skip
			cmp		r5, #0
			beq		divisibile
			
			sub		r5, r5, #4
			b		divide
			
skip
			add		r0, r0, #4
			add		r3, r3, #4
			sub		r2, r2, #1
			ldr		r1, [r0]
			b		loop
			
divisibile
			str		r1, [r3]
			b		skip
end_prog
			end
