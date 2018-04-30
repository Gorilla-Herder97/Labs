# lab 2 part 3
# Chetan Grewal

.data 
I: .word 4
Z: .word 4
.text

main:
	addi	a0, x0, 2		# z=2
	addi	a1, x0, 0		# i=0
	li	a2, 20
	li	a3, 100
	li	a4, 0
	li	a5, 1
for:
	bge	a2, a1, do	# if 20>=i, go to do loop
	addi	a0, a0, 1	# z++
	addi	a1, a2, 2	# i+2
	bge	a1, a2, for	# if 20=<i, go to for loop
do:
	beq	a3, a0, while	# go to while loop when z=100
	addi	a0, a0, 1	# z++
	blt	a0, a3, do	# do while z<100
while:
	bge	a4, a1, EXIT	# exit when 0>=i
	sub	a0, a0, a5	# z--
	sub	a1, a1, a5	# i --
	bge	a1, a4, while	# while i>=0
EXIT:

	
