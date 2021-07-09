
	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el extremo derecho del rectangulo
	# Recibe por a0 la base del rectangulo
	
	.globl avanzar_extremo
	
	.data
	
	.eqv  	MAX 16
	.text
	
	mv t3, a0
avanzar_extremo:


	li t1, 0
	li t2, 1
	
	sub t4, t3, t2

bucle:
	beq t4, t1, fin_bucle
	addi s0,s0,4
	addi t1, t1, 1
	b bucle
	
fin_bucle:

mv a0, t3
ret