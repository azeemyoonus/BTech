.data
msg1: .asciiz "program to find area of the rectangle: "
msg2: .asciiz "\n"
msg3: .asciiz "Enter the length of the rectangle : "
msg4: .asciiz "Enter the breadth of the rectangle: "
msg5: .asciiz "The value of area is : "

.text

main:

li $v0,4 
la $a0,msg1
syscall

li $v0,4
la $a0,msg2
syscall

li $v0,4 
la $a0,msg3
syscall

li $v0,5          #system call to take integer input from the console 
syscall
move $t0,$v0

li $v0,4 
la $a0,msg4
syscall

li $v0,5          #system call to take integer input from the console 
syscall
move $t1,$v0

mul $t2,$t1,$t0

li $v0,4 
la $a0,msg5
syscall

li $v0,1        #system call to print the integer ie our answer of sum of n integers
move $a0, $t2
syscall

jr $ra