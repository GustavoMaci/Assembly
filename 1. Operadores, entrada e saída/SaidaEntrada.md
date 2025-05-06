# Introdução: ✍
### Para interação com dispositivos de entrada e saída, o usuário precisa solicitar ao Sistema Operacional que realize uma operação.

# Serviços de SO:
### 1. O Código do Serviço deve ser sempre colocado no registrador **$2** (ou, usando o seu apelido,v0).
### 2. O programa do usuário, depois de colocar o código de serviço em **$2**, faz a chamada ao SO usando a instrução especial: **syscall.**


# Alguns Serviços:
| **Código do Serviço `$v0`** | **Serviço**              | **Argumentos** | **Resultados**                        |
|----------------------------|--------------------------|----------------|---------------------------------------|
| 1                          | Imprime inteiro          | `$4`           |                                       |
| 5                          | Lê inteiros              |                | `$2` contém o inteiro lido            |
| 10                         | Fim da execução          |                |                                       |
| 11                         | Imprimir um caractere    | `$4`           |                                       |
| 12                         | Lê um caractere          |                | `$2` contém o caractere lido          |

> ## 📌 **Nota:**  
> Para fazer comentário no código, basta usar: # "seu comentário". `EX: addi $t0, $zero, 76  # Em $t0 guardamos o valor 76`

# Exemplo
### Problema: Ler dois números inteiros e imprimir a sua soma
```mips
.text    # Informa a região da memória a ser usada
main: 
    addi $2, $0, 5  
    syscall         # lê um inteiro para $2
    add $8, $0, $2  # cópia para o $8

    addi $2, $0, 5  
    syscall         # lê o outro inteiro para $2

soma: 
    add $9, $2, $8  # Soma os números lidos
    add $4, $0, $9  # Move a soma para o $4
    addi $2, $0, 1  
    syscall         # Imprime o valor da soma que está em $4

    addi $2, $0, 10 
    syscall         # Encerra a execução
```
# Quebra de Linha no Mars Mips
### Para adicionar a quebra de linha após cada número, você precisa imprimir o caractere de nova linha ('\n', código ASCII 10) logo após imprimir cada dígito.
### Você pode fazer isso usando o syscall 11 (que imprime um caractere) e colocando o valor ASCII 10 em $a0 ($4).

    addi $4, $0, 10     # $4 = '\n'
    addi $2, $0, 11     # syscall 11 = print char
    syscall
