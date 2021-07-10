

	# Este programa representa el numero de votos de 4 partidos politicos, introducidos por el usuario.
	# Siendo 16 el numero maximo de votos por cada partido.
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "VOTOS DEL PSOE:\n"
msg2:   .string "VOTOS DEL PP:\n"
msg3:   .string "VOTOS DE PODEMOS:\n"
msg4:   .string "VOTOS DE VOX: \n"


.eqv	RED   0x00FF0000
.eqv	GREEN   0x0000FF00
.eqv	BLUE   0x000000FF
.eqv	MAGENTA   0x00FF00FF

.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10
.eqv	PRINT_INT 1


.text


setup: 
	
	
	
	li s1,RED	#COLOR partido 1
	li s2, BLUE     #COLOR partido 2
	li s3, MAGENTA	#COLOR partido 3
	li s4, GREEN	#COLOR partido 4
		
	# Partido 1	
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT
	ecall
	
	la a2, data
	
	mv a1, s1 	# Le paso el color del partido 1
	
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	# Partido 2
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT
	ecall
	
	
	mv a1, s2	# Le paso el color del partido 2
	
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	
		# Partido 3
		
	la a0, msg3
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT
	ecall
	
	
	
	mv a1, s3 	# Le paso el color del partido 3
	
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

		# Partido 4
	
	la a0, msg4
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT
	ecall
	
	
	
	mv a1, s4	# Le paso el color del partido 4
	
	
	jal pintar	# Llamamos a pintar para pintar el resultado
	
	
	jal avanzar	# Movemos el puntero hasta el inicio de la siguiente columna

	

	fin:	
	 li a7, EXIT
	ecall	







