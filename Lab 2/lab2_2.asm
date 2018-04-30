# lab 2 part 2
# chetan grewal

.data
A: .word 4
B: .word 4
C: .word 4
Z: .word 4
.text

main:
	addi	a0, a0, 10	# A
	addi	a1, a1, 15	# B
	addi	a2, a2, 6	# C
	addi	a3, a3, 0	# Z
	addi	t1, t1, -1	# temp lil thang
	addi	t2, t2, 5	# another lil temp thang
	# if-else statement
	blt	a1, a0, ElseIf	# if A>B go to else 
	blt	a2, t2, ElseIf	# if 5>C go to else
	addi	a3, a3, 1	# if A<B & C>5, Z = 1	
	# switch
	addi	t0, x0, 1
	addi	t1, x0, 2
	addi	t2, x0, 3
	beq	a3, t0, case1
	beq	a3, t1, case2
	beq	a3, t2, case3
	addi	a3, x0, 0	# default, z = 0
	j	Exit
ElseIf:
	blt	a0, a1, ElseIf2 # if A<B, go to elseif2
	addi	a3, x0, 2		# Z = 2
ElseIf2:
	addi	t1, a2, 1	# C+1
	addi	t0, x0, 7
	beq	t1, t0, do	# if c+1 == 7, go to DO
	addi	a3, x0, 3		# else Z=3
do:
	addi	a3, x0, 2	# z = 2	
case1:
	mulhu	a3, a3, t1	# z = -1
case2:
	mulhu	a3, a3, t1	# z = -2
case3:
	mulhu	a3, a3, t1	# z = -3
Exit:

	sw a0, A, t0
	sw a1, B, t0
	sw a2, C, t0
	sw a3, Z, t0
