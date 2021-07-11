
	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el inicio de la siguiente fila
	# Recibe por a0 el puntero
	# Recibe por a1 la puntuacion
	
	.globl avanzar
	
	.data
	
	.eqv  	MAX 16
	.text

avanzar:
	li t1, 0
	
	li, t0, MAX
	
	sub t2, t0, a1	#Resto la puntuacion maxima (16) menos la puntuacion del equipo

bucle_avanzar:

	beq t1, t2, fin_avanzar
	
	addi a0,a0,4
	
	addi t1, t1, 1
	
	b bucle_avanzar
	
fin_avanzar:

ret
