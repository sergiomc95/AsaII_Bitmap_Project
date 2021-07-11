
	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el extremo derecho del rectangulo
	# Recibe por a0 el puntero con la direccion actual
	# Recibe por a2 la base del rectangulo
	.globl avanzar_extremo
	
	.data
	
	.eqv  	MAX 16
	.text
	
avanzar_extremo:

	li t1, 0
	li t2, 1
	
	sub t4, a2, t2

bucle:
	beq t4, t1, fin_bucle
	addi a0,a0,4
	addi t1, t1, 1
	b bucle
	
fin_bucle:

ret
