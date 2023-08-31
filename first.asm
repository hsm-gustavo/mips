.data

.text
main:
    addi $s0, $zero, 20 # add immediate / s0 = 0 + 20
    addi $s1, $zero, 10 # add immediate / s1 = 0 + 10
    
    add $s2, $s0, $s1 # a0 = s0 + s1
    syscall

    li $v0, 10
    syscall
    
