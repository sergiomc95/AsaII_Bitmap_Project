

	# ESTE PROGRAMA PINTA EL NUMERO DE BLOQUES SOLICITADOS (128 PIXELES)
.data 

data:	.word 0x1001000    #PUNTO DE INICIO (0,0)

msg1:   .string "Introduzca el numero de bloques a pintar:"

.eqv	RED   0x00FF0000
.eqv	GREEN   0x0000FF00
.eqv	BLUE   0x000000FF
.eqv	WHITE   0x00FFFFFF
.eqv	YELLOW   0x00FFFF00
.eqv	CYAN   0x0000FFFF
.eqv	MAGENTA   0x00FF00FF

.eqv    READ_INT 5
.eqv	PRINT_STRING 4
.eqv 	EXIT 10

.text


setup: 
	la s0,data
	
	li s1,YELLOW	#asignar color
		
		
	la a0, msg1
	li a7, PRINT_STRING
	ecall
		
	li a7, READ_INT
	ecall
	mv s2, a0
	
	
	li t1, 0
bucle_pintar:	
	beq s2, t1, fin
	
	sw s1, 0(s0)	# pinta el primer cuadrado

	addi s0,s0,4
	
	addi t1, t1, 1
	
	b bucle_pintar
fin:	
	 li a7, EXIT
	ecall	
	
