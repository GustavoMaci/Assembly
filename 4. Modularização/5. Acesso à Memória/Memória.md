# 🖥️ Acesso à Memória:
**O que seria necessário para transferir um dado que está na memória para um registrador?**
- Um endereço fonte (endereço da memória)
- Um endereço destino (registrador)

# Instruções para Acesso à Memória:
## Instrução Load Word: 
### lw:
**▶ Sintaxe:**  
`lw $destino, Const($font1)`  

**▶ Operação:**  
`$destino = MEM[Const + $font1]`

**▶ Exemplo:**  
`lw $8, 0($9)`

---
## Instrução Store Word: 
### sw:
**▶ Sintaxe:**  
`sw $font2, Const($font1)`  

**▶ Operação:**  
`MEM[Const + $font1] = $font2`

**▶ Exemplo:**  
`sw $8, 0($9)`

---
## Instrução Load Upper Immediate: 
### lui:
**▶ Sintaxe:**  
`lui $destino, Const`  

**▶ Operação:**  
`$destino = Const << 16`

**▶ Exemplo:**  
`lui $8, 0x10001`
