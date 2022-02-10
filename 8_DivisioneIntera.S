					;		8) divisione intera
n1					dcd		121
n2					dcd		11
res					fill		4
					
					mov		r0, #n1
					ldr		r0, [r0]
					mov		r1, #n2
					ldr		r1, [r1]
					mov		r4, #res
					mov		r2, #0
					mov		r3, #0
					cmp		r1, #0
					beq		fine_ciclo
loop
					cmp		r0, #0
					beq		fine_ciclo_divisibile
					cmp		r0, #0
					blt		fine_ciclo
					
					sub		r0, r0, r1
					add		r2, r2, #1
					b		loop
fine_ciclo_divisibile
					str		r2, [r4]
					end
fine_ciclo
					sub		r2, r2, #1
					mvn		r3, r0
					str		r2, [r4]
					end
