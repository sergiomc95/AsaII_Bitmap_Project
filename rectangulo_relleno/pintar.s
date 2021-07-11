


# SUBRUTINA PARA PINTAR LA BASE DEL RECTANGULO

	#Recibe por a0 la direccion actual
	#Recibe por a1 el color
	# Recibe por a2 el ancho (base) del rectangulo
	
	.globl pintar

	.text
	
pintar:

	li t1, 0
	
bucle_pintar:	

	beq a2, t1, salir
	
	sw a1, 0(a0)

	addi a0,a0,4
	
	addi t1, t1, 1
	
	b bucle_pintar
	
salir:

ret
