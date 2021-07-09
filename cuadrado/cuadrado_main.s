

# Este programa dibuja un Rectangulo especificando tamaño en pixeles de Base y Alture
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca la base del rectangulo:\n"
msg2:   .string "Introduzca la altura del rectangulo:\n"

.eqv	RED   0x00FF0000
.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.eqv	MAX 16

.text


	la s0,data	#Puntero inicial
	li s1,RED	#COLOR del Rectangulo
		
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos la base por teclado (1-16)
	ecall 
	
	mv s2, a0	# s2 tiene la base
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT	# Introducimos la altura por teclado (1-8)
	ecall
	
	li s5, 1
	
	sub s3, a0, s5	# s3 tiene la altura
	
	
	mv a0, s2
	jal pintar_base
	
	li s8, 0
	
	bucle_rectangulo:
	
	beq s8, s3, fin_bucle1
	
	
	jal avanzar_fila
	
	
	sw s1, 0(s0)
	
	jal avanzar_extremo
	
	sw s1, 0(s0)
	
	addi s0,s0,4
	addi s8, s8, 1
		
	b bucle_rectangulo


fin_bucle1:

	jal avanzar_fila
	jal pintar_base



fin:	
	li a7, EXIT
	ecall	

	