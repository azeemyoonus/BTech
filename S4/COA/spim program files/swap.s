.data

msg1: .asciiz "Program to swap two values"
msg2: .asciiz "\n"
msg3: .asciiz "Enter the first number :"
msg4: .asciiz "Enter the second number :"
msg5: .asciiz " The first number after swap :"
msg6: .asciiz " The second number after swap:"

.text
main:

li $v0,4        #system call code for printing the string to the console
la $a0,msg1
syscall

li $v0,4        #system call code for printing the string to the console
la $a0,msg2
syscall

li $v0,4        #system call code for printing the string to the console
la $a0,msg3
syscall

li $v0,5          #system call to take integer input from the console 
syscall
move $t0,$v0

li $v0,4        #system call code for printing the string to the console
la $a0,msg4
syscall

li $v0,5          #system call to take integer input from the console 
syscall
move $t1,$v0

add $t2,$t0,$zero

move $t0,$t1
move $t1,$t2


li $v0,4        #system call code for printing the string to the console
la $a0,msg5
syscall

li $v0,1        #system call to print the integer ie our answer of sum of n integers
move $a0, $t0
syscall

li $v0,4        #system call code for printing the string to the console
la $a0,msg2
syscall

li $v0,4        #system call code for printing the string to the console
la $a0,msg6
syscall

li $v0,1        #system call to print the integer ie our answer of sum of n integers
move $a0, $t1
syscall

jr $ra