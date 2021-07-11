
	# SUBRUTINA PINTAR
	# Recibe por a0 el puntero
	# Recibe por a1 la puntuacion 
	# Recibe por a2 el color 
	
	.globl pintar

	.text
		
pintar:

	li t1, 0
	
	mv t3, a2	# Le pasamos a t3 el color
	
bucle_pintar:	

	beq a1, t1, salir
	
	sw t3, 0(a0)	# pinta el pixel actual

	addi a0,a0,4	#Avanzar una posicion a nivel de pixel
	
	addi t1, t1, 1
	
	b bucle_pintar
	
salir:

	
ret
