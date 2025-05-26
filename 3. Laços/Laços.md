# Laços em Mars Mips: ➡️
## Construindo um BGT:
```mips
addi $9, $0, 1          # $9 = 1
addi $10, $0, 10        # $10 = 10
slt  $11, $10, $8       # Se ($10 < $8) então $11 = 1 senão $11 = 0
beq  $11, $9, bgt_dest  # se $11 == 1 bgt_dest

addi $10, $0, 10        # $10 = 10
slt  $11, $10, $8       # Se ($10 < $8) então $11 = 1 senão $11 = 0
bne  $11, $0, bgt_dest  # se $11 != 0 bgt_dest
```
---
## Construindo um BLET:
```mips
addi $10, $0, 10         # $10 = 10  
beq  $8, $10, blet_dest  #  

addi $9, $0, 1           # $9 = 1  
slt  $11, $8, $10        # Se ($8 < $10) entao $11 = 1 senao $11 = 0  
beq  $11, $9, blet_dest  # se $11 == 1 blet_dest
```
