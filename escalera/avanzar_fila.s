

	# SUBRUTINA AVANZAR
	# Movemos el puntero hasta el inicio de la siguiente fila
	
	#Recibe por a0 la direccion actual
	# Recibe por a2 la longitud del escalon
	
	.globl avanzar_fila
	
	.data
	
	.eqv  	MAX 16
	.text

avanzar_fila:
	
	li t1, 0
	
	li, t0, MAX

	
	sub t2, t0, a2	#Resto el MAX (16) menos el ancho del escalon

	
bucle_avanzar:

	beq t1, t2, fin_avanzar
	
	addi a0,a0,4
	
	addi t1, t1, 1
	
	b bucle_avanzar
	
fin_avanzar:


ret
