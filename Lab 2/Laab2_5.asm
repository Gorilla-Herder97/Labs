# Chetan Grewal
# Lab 2 part 5

.data
a: .word 4
b: .word 4
c: .word 4
.text

main:
	addi 	t0, x0, 5 	# i = 5
	addi 	t1, x0, 10 	# j = 10 
	addi 	sp, sp , -8 	
	sw 	t0, 0(sp) 	# store
	sw 	t1, 4(sp) 	
	mv 	a0, t0 		# move
	jal 	AddItUp
	sw 	t1, a, t6 	# store additup into a
	lw 	t0, 0(sp) 	# restores t0 from the stack
	lw 	t1, 4(sp) 	# restores t1 from the stack
	addi 	sp, sp , 8 
	addi 	sp, sp , -8 
	sw 	t0, 0(sp) 	
	sw 	t1, 4(sp) 	
	mv 	a0, t1 		
	jal 	AddItUp
	sw 	t1, b, t6 	# store additup into b 
	la 	t3, a 		
	lw 	t0, 0(t3) 	
	add 	t2, t0, t1 	# c = a + b
	sw 	t2, c, t6 	
	j 	EXIT
AddItUp:		
	add 	t1, x0, x0 	# x = 0
	addi 	t0, x0, 0 	# i = 0
loop:
	slt 	a4, t0, a0 	# while a0 > i (i<n)
	beq 	a4, x0, end
	addi 	t0, t0, 1 	# i++
	add 	t1, t1, t0 	# x = x + i	
	j 	loop		
end: 
	ret		
EXIT:
	lw 	t0, 0(sp) 	
	lw 	t1, 4(sp) 
	addi 	sp, sp , 8 	
