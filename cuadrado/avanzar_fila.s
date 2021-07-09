

	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el inicio de la siguiente fila
	# Recibe por a0 la base del rectangulo
	
	.globl avanzar_fila
	
	.data
	
	.eqv  	MAX 16
	.text

avanzar_fila:
	
	li t1, 0
	
	li, t0, MAX
	mv t3, a0
	
	sub t2, t0, a0	#Resto el MAX (16) menos la base

	
bucle_avanzar:

	beq t1, t2, fin_avanzar
	
	addi s0,s0,4
	
	addi t1, t1, 1
	
	b bucle_avanzar
	
fin_avanzar:

mv a0, t3

ret