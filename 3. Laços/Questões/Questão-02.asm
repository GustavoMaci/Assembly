.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Referência
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Quantidade
	
	addi $10, $0, 1 # Index
	
	addi $4, $0, '\n'
	add $2, $0, 11
	syscall 
		
const:	mul $11, $8, $10 # num x index	
	add $4, $0, $11
	addi $2, $0, 1 # Imprime num x index
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall # Quebra de linha
	
	addi $10, $10, 1 # Index++
	
	ble $10, $9, const
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	
	