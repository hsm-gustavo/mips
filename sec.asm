.data

.text
main:
    addi $s0, $zero, 5 
    addi $s1, $zero, 6 

    mul $a0, $s0, $s1
    syscall
    
    li $v0, 10
    syscall
    
