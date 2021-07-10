
	# SUBRUTINA PINTAR
	# Recibe por a0 la puntuacion
	# Recibe por a1 el color 
	# Recibe por a2 el puntero 
	
	.globl pintar

	.text
	
	
pintar:

	li t1, 0
	
	mv t3, a1	# Le pasamos a t3 el color
bucle_pintar:	

	beq a0, t1, salir
	
	sw t3, 0(a2)	# pinta el pixel actual

	addi a2,a2,4	#Avanzar una posicion a nivel de pixel
	
	addi t1, t1, 1
	
	b bucle_pintar
	

salir:

	
ret
