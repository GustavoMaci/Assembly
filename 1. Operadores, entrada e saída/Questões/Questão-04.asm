.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # Salva a primeira nota em $8
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2 # Salva a segunda nota em $9
       
       addi $10, $0, 2 # $10 recebe 2
       
       add $11, $8, $9 # Soma as duas notas
       div $11, $10 # Divide a soma das notas por 2
       
       mflo $12 # Resultado da média
       
       add $4, $0, $12
       addi $2, $0, 1
       syscall # Imprimir o resultado da média
       
       addi $2, $0, 10
       syscall # Encerra o programa
