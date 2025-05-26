main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Recebe o valor x
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Recebe o valor y
	
	bgt $8, $9, num1 # Se x > y => num1
	
	sub $4, $9, $8
	j print

num1:	sub $4, $8, $9

print:	addi $2, $0, 1 # Print da diferença do maior - menor
	syscall
	
	addi $2, $0, 10
	syscall # Encerra o programa
