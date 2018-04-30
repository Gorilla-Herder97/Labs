# Chetan Grewal
# Lab 2 part 4

.data
A: .space 20
B: .word 1, 2, 4, 8, 16
i: .word 4
.text
main:
	la 	a0, A 
	la 	a1, B 
	addi 	a2, x0, 0 	# i
Loop: 	slti 	t0, a2, 5
	beq 	t0, x0, break
	slli 	t1, a2, 2 	# shift i by 2
	add 	t2, a1, t1  	# add i to A
	lw 	t3, 0(t2) 	
	addi 	t3, t3, -1 
	add 	t4, t1, a0 	
	sw 	t3, 0(t4) 	# stores value onto A
	addi 	a2, a2, 1 	# i++
	j 	Loop
break:
	addi 	a2, a2, -1 	# i --
	addi 	s3, x0, -1 	# load register with -1
while: 
	slt 	t0, s3, a2 
	beq 	t0, x0, EXIT 
	slli 	t1, a2, 2 	# shift i by 2 
	add 	t2, a0, t1 	# adds i to A
	lw 	t3, 0(t2) 	# loads A[i]
	add 	t4, a1, t1 	# add i to B
	lw 	t5, 0(t4) 	
	add 	t6, t5, t3 	# A[i] + B[i]
	addi 	s2, x0, 2 	
	mul 	t6, t6, s2 	# (A[i] + B[i]) * 2
	sw 	t6, 0(t2) 	# store value in A[i]
	addi 	a2, a2, -1 	# i--
	j 	while
EXIT:
