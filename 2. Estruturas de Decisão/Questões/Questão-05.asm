main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Recebe Nota 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Recebe Nota 2
		
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # Recebe Nota 3
	
	# Pesos
	addi $11, $0, 1
	addi $12, $0, 2
	addi $13, $0, 3
	addi $14, $0, 6 # Soma dos pesos
	
	mul $15, $8, $11 # Nota 1 * Peso 1
	mul $16, $9, $12 # Nota 2 * Peso 2
	mul $17, $10, $13 # Nota 3 * Peso 3
	
	# Soma das Notas * Pesos
	add $18, $15, $16
	add $19 , $18, $17	
	
	# Meédia Final
	div $19, $14
	mflo $20
	
	add $4, $0, $20
	add $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
        addi $2, $0, 11
        syscall
	
	addi $21, $0, 60 # Nota mínima
	
	bge $20, $21, aprov # Se Média Final > 60 => aprov
	
	addi $4, $0, 'R'
	j print
	
aprov: 	addi $4, $0, 'A'

print:	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall # Encerra o programa
