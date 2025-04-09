# Banco de Registradores de Uso Geral:
- 32 registradores de 32 bits
- Acesso usando o prefixo "$" seguido do número do registrador. **EX: $3**

### Alguns registradores tem uso predeterminado:
- **$0** deve conter sempre o valor 0
- **$31** usado para chamada de subrotina
- **$29** apontador da pilha

### Uso livre:
- **$8 a $15** -> Variáveis Temporárias
- **$16 a $23** -> Variáveis Salvas
- **$24 e $25** -> Mais Temporárias

### Outras nomeclaturas:
| **Nome**       | **Número**     | **Uso**                         | **Preservado em Chamadas** |
|----------------|----------------|----------------------------------|-----------------------------|
| `$zero`        | `$0`           | Constante 0                      | Fixa em Zero                |
| `$at`          | `$1`           | Uso do montador (temp.)         | Não                         |
| `$v0 - $v1`    | `$2 - $3`      | Resultado de Funções            | Não                         |
| `$a0 - $a3`    | `$4 - $7`      | Argumentos de Funções           | Não                         |
| `$t0 - $t7`    | `$8 - $15`     | Variáveis Temporárias           | Não                         |
| `$s0 - $s7`    | `$16 - $23`    | Variáveis Salvas                | Sim                         |
| `$t8 - $t9`    | `$24 - $25`    | Mais temporários                | Não                         |
| `$k0 - $k1`    | `$26 - $27`    | SO Kernel (interrupções)        | Não                         |
| `$gp`          | `$28`          | Global Pointer                  | Sim                         |
| `$sp`          | `$29`          | Stack Pointer                   | Sim                         |
| `$fp`          | `$30`          | Frame Pointer                   | Sim                         |
| `$ra`          | `$31`          | Endereço de Retorno             | Sim                         |

> ### OBS -> Outros Registradores:  
> **HI (32 bits)**: Recebe os resultados (por exemplo de multiplicações)                          
> **LO (32 bits)**: Recebe os restos (por exemplo de divisões)
> **PC (32 bits)**: program counter

# Operações Aritméticas:
## Soma: 
### add:
**▶ Sintaxe:**  
`add $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 + $fonte2`  

**▶ Exemplo:**  
`add $8, $9, $10` 

---
### addi:

**▶ Sintaxe:**  
`addi $destino, $fonte1, Constante`  

**▶ Operação:**  
`$destino = $fonte1 + Constante`  

**▶ Exemplo:**  
`addi $8, $9, 5` 

---
### addu: 

**▶ Sintaxe:**  
`addu $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 + $fonte2`  

**▶ Exemplo:**  
`addu $8, $9, $10`  

## Subtração: 
### sub:
**▶ Sintaxe:**  
`sub $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 - $fonte2`  

**▶ Exemplo:**  
`sub $8, $9, $10`  

---

### subu:
**▶ Sintaxe:**  
`subu $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = $fonte1 - $fonte2`  

**▶ Exemplo:**  
`subu $8, $9, $10`  

---

## Multiplicação: 
### mul:

**▶ Sintaxe:**  
`mul $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`HI, LO = $fonte1 * $fonte2`  
`$destino = LO`  

**▶ Exemplo:**  
`mul $8, $9, $10`  

---
## Divisão:
### div:
**▶ Sintaxe:**  
`div $fonte1, $fonte2`  

**▶ Operação:**  
`HI = $fonte1 % $fonte2` (resto)  
`LO = $fonte1 / $fonte2` (quociente)  

**▶ Exemplo:**  
`div $9, $10` 

---
## Transferência:
### mfhi/mflo:
**▶ Sintaxe:**  
`mfhi $destino`  
`mflo $destino`  

**▶ Operação:**  
`$destino = HI`  
`$destino = LO`  

**▶ Exemplo:**  
`mfhi $9`
`mflo $9`
