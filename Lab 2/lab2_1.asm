#lab 2 part 1
#Chetan Grewal
#addition, subtraction, multiplication, and division

.data

.text

Main:

	li	a0, 15		# A=15
	li	a1, 10		# B=10
	li	a2, 5		# C=5
	li	a3, 2		# D=4
	li	a4, 18		# E=18
	li	a5, -3		# F=-3
	li	a6, 0		# Z=0
	
	sub	t3, a0, a1	# temp for A-B
	mul	t4, a2, a3	# temp for C*D
	sub	t5, a4, a5	# temp for E-F
	div	t6, a0, a2	# temp for A/C
	
	# add stuff together for Z
	add	a6, a6, t3
	add	a6, a6, t4
	add	a6, a6, t5
	sub	a6, a6, t6
