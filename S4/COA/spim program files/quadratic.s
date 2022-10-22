#Program to evaluate 4x^2+2x+3
.data
Msg1 : .asciiz "Enter the coeffecient of x^2: "
Msg2 : .asciiz "Enter the coeffecient of x: "
Msg3 : .asciiz "Result: " 
.text

main:

li $t4,4
li $t5,2
li $v0,4

la $a0,Msg1
syscall

li $v0,5
syscall

move $t0,$v0 #x^2

li $v0,4
la $a0,Msg2
syscall

li $v0,5
syscall

move $t1,$v0 #x
mul $t0,$t0,$t0
mul $t0,$t0,$t4
mul $t1,$t1,$t5
add $t3,$t0,$t1
addi $t3,$t3,3

li $v0,4
la $a0,Msg3
syscall

li $v0,1
move $a0,$t3
syscall

jr $ra