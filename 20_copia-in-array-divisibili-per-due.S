					;		20) copia su un nuovo array
					;		di tutti gli elementi divisibili per 2
					
arr					dcd		30, 29, 190, 48, 12, 39, 3, 40, 10, 20, 4, 17
size					dcd		12
nuovoarr				dcd		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
					
					mov		r0, #arr
					ldr		r1, [r0]
					mov		r2, #size
					ldr		r2, [r2]
					mov		r3, #nuovoarr
					
loop
					cmp		r2, #0
					beq		fine_prog
					b		controlla_divisibile
back
					add		r0, r0, #4
					sub		r2, r2, #1
					add		r3, r3, #4
					ldr		r1, [r0]
					mov		r4, #0
					b		loop
					
controlla_divisibile
					mov		r4, r1
					and		r4, r4, #1
					cmp		r4, #0
					bne		back
					str		r1, [r3]
					b		back
fine_prog
					end
