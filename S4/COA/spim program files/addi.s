.data
 # It intriduces the data (ie global variables) section ot the program

MSG1: .asciiz "The number obtained when 8 is added with 1 (immediate): "
# MSG1 is a label then it is followed by     data type .asciiz, 
# followed by message to  be printed on to the console window

.text
# All program code is placed after the
	# .text assembler directive

.globl main 
	# Declare main as a global function

main:
# The label 'main' represents the starting point

li $t3,8
# loads the immediate value 8 into $t3,t3 is a temporary register



addi $t1,$t3,1
 #  1 is added with the value in t3 and the and the value is stored in t1

li $v0,4
 # Print out a string, Special register v0 to print anything to the console. If value 4 is passed, we are printing a string to the console

la $a0,MSG1
 # Instruction is load address, that means it is  now pointing to the MSG1.ie,Get address of a stringMSG1 into a0 as content. ao is another special register used for this purpose.

syscall
 # Printing the string from a0 to the console

li $v0,1
# Print out a integer   ,Special register v0 to print anything to the console. If value 1is passed, we are printing a integerto the console

move $a0,$t1
# Move the number to a0from the destination register t1, since t1 now contains the result of addition

syscall
  # display the integer
  
jr $ra