main:	addi $2, $0, 5
	syscall	
	add $8, $0, $2 # Recebe x
	
	addi $2, $0, 5
	syscall	
	add $9, $0, $2 # Recebe y
	
	bgt $8, $9, num1 # Se x > y => num
		
 	add $4, $0, $9
 	j print
	
num1: 	add $4, $0, $8
	
print:	addi $2, $0, 1
	syscall # Mostra o maior número
	
	addi $2, $0, 10
	syscall # Encerra o programa
