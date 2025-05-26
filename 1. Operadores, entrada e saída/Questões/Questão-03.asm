.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # Salva o primeiro valor em $8
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2 # Salva o segundo valor em $9
       
       mul $10, $9, $8 # $10 recebe a multiplicação de ambos
       
       add $4, $0, $10
       addi $2, $0, 1
       syscall # Imprime o $10
       
       addi $2, $0, 10
       syscall # Encerra o programa
