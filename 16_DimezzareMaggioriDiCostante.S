; 16) dividere per 2 tutti gli elementi di un array 
; 	maggiori di una costante fornita

arr dcd 4, 6, 14, 6, 20, 26, 30, 10, 3, 5, 60, 28
size dcd 12
costante dcd 9 
res dcd 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

mov r0, #arr
ldr r1, [r0]
mov r2, #size
ldr r2, [r2]
mov r3, #costante
ldr r3, [r3]
mov r4, #res

loop 
	cmp r2, #0
	beq end_prog

	cmp r1, r3
	bgt elmaggiore

elmaggiore
	
end_prog
	  
	end
