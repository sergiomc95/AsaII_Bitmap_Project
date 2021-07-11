
	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el inicio de la siguiente fila
	# Recibe por a0 la puntuacion
	# Recibe por a2 el puntero
	
	.globl avanzar
	
	.data
	
	.eqv  	MAX 16
	.text

avanzar:
	li t1, 0
	
	li, t0, MAX
	
	sub t2, t0, a0	#Resto la puntuacion maxima (16) menos la puntuacion del equipo

bucle_avanzar:

	beq t1, t2, fin_avanzar
	
	addi a2,a2,4
	
	addi t1, t1, 1
	
	b bucle_avanzar
	
fin_avanzar:

ret
