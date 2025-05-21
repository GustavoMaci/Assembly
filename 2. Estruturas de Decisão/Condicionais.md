# Condicionais em Mars Mips: ➡️
## beq - Instrução Branch if Equals:
**▶ Sintaxe:**  
`beq $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 == $fonte2) PC = $rótulo senão PC = PC + 4` 

**▶ Exemplo:**  
`beq $8, $9, main`

---
## bnq - Instrução Branch if Not Equals:
**▶ Sintaxe:**  
`bnq $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 != $fonte2) PC = $rótulo senão PC = PC + 4` 

**▶ Exemplo:**  
`bnq $8, $9, main`  

---
## j - Jump:
**▶ Sintaxe:**  
`j rótulo`  

**▶ Operação:**  
`PC = $rótulo (há detalhes)` 

**▶ Exemplo:**  
`j main` 

---
## slt - Instrução Set on Less Than:
**▶ Sintaxe:**  
`slt $destino, $fonte1, $fonte2`  

**▶ Operação:**  
`$destino = 1 se ($fonte1 < $fonte2), senão $destino = 0`  

**▶ Exemplo:**  
`slt $10, $8, $9`  

---
# pseudoinstruções:
## bgt - Branch if Greater Than:
**▶ Sintaxe:**  
`bgt $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 > $fonte2) PC = $rótulo senão PC = PC + 4`  

**▶ Exemplo:**  
`bgt $8, $9, maior`  

---
## blt - Branch if Less Than:
**▶ Sintaxe:**  
`blt $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 < $fonte2) PC = $rótulo senão PC = PC + 4`  

**▶ Exemplo:**  
`blt $8, $9, menor`  

---
## bge - Branch if Greater or Equal:
**▶ Sintaxe:**  
`bge $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 >= $fonte2) PC = $rótulo senão PC = PC + 4`  

**▶ Exemplo:**  
`bge $8, $9, continua`  

---
## ble - Branch if Less or Equal:
**▶ Sintaxe:**  
`ble $fonte1, $fonte2, rótulo`  

**▶ Operação:**  
`Se ($fonte1 <= $fonte2) PC = $rótulo senão PC = PC + 4`  

**▶ Exemplo:**  
`ble $8, $9, fim`
