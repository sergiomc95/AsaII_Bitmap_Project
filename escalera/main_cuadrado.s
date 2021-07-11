
# Este programa dibuja una escalera especificando tamaño en pixeles de cada escalon y la Altura total de la escalera.
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca la longitud del escalon:\n"
msg2:   .string "Introduzca la altura de la escalera:\n"

.eqv	RED   0x00FF0000
.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.eqv	MAX 16

.text

		
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos el ancho del escalon (1-16)
	ecall 
	
	mv s2, a0	# s2 tiene la longitud del escalon
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos la altura por teclado (1-8)
	ecall
	
	mv a3, a0	# a3 tiene la altura de la escalera
	
	
	mv a2, s2	# a2 Contiene el ancho 
	
	li a1,RED	#COLOR del escalon
	la a0,data	#Puntero inicial
	
	li s8, 0
	
	bucle_pintar:
	
	beq s8, a3, fin
	
	jal pintar
	
	
	jal avanzar_fila
	
	addi a0,a0,4
	addi s8, s8, 1
	
	b bucle_pintar
	
	
	
fin:	
	li a7, EXIT
	ecall	
