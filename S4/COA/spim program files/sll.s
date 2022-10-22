.data
 # It intriduces the data (ie global variables) section ot the program

MSG1: .asciiz "The numbers obtained after shift left 1 by 2 after shift left operation is "
# MSG1 is a label then it is followed by     data type .asciiz, 
# followed by message to  be printed on to the console window

.text
# All program code is placed after the
	# .text assembler directive

.globl main 
	# Declare main as a global function

main:
# The label 'main' represents the starting point

li $t3,1
# loads the immediate value 8 into $t3,t3 is a temporary register


sll $t1,$t3,2
 #  performing the sll operation on  contents of the register t3 with t2 and  put the content to destination register t1 
#it shifts the value by 2 times

li $v0,4
 # Print out a string, Special register v0 to print anything to the console. If value 4 is passed, we are printing a string to the console

la $a0,MSG1
 # Instruction is load address, that means it is  now pointing to the MSG1.ie,Get address of a string MSG1 into a0 as content. 

syscall
 # Printing the string from a0 to the console

li $v0,1
# Print out a integer   ,Special register v0 to print anything to the console. If value 1is passed, we are printing a integerto the console

move $a0,$t1
# Move the number to a0from the destination register t1, since t1 now contains the result 

syscall
  # display the integer
  
jr $ra