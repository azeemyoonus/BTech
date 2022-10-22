#Program to check whether a number is odd or even
.data
Msg1 : .asciiz "Enter the number:"
Msg2 : .asciiz "The number is an Even number"
Msg3 : .asciiz "The number is an Odd number" 

.text

main:

li $t0,0
li $v0,4

la $a0,Msg1
syscall

li $v0,5
syscall 

move $t2,$v0

andi $t2,$t2,1

beq $t2,$t0,Even

li $v0,4
la $a0,Msg3
syscall
j Exit
Even:
    li $v0,4
    la $a0,Msg2
    syscall
    j Exit

Exit:
    jr $ra