
	# SUBRUTINA PINTAR
	# Recibe por a0 la puntuacion y por a1 el color del Equipo 
	
	.globl pintar

	.text
	
	
pintar:

	li t1, 0
	
	mv t2, a0	#Le pasamos a t2 la puntuacion
	mv t3, a1	# Le pasamos a t3 el color
bucle_pintar:	

	beq t2, t1, salir
	
	sw t3, 0(s0)	# pinta el pixel actual

	addi s0,s0,4	#Avanzar una posicion a nivel de pixel
	
	addi t1, t1, 1
	
	b bucle_pintar
	

salir:

	mv a0, t2
ret