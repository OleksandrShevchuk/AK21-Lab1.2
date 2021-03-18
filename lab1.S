.global lab1
.syntax unified

#define A #4
#define B #13
#define C #4

lab1:
	push {lr}
	mov r0, A
	mov r1, B
	mov r2, C
	mov r3, #3
	mov r4, #2
	mov r5, r4

	sub r0, r1
	mul r0, r3

	cmp r2, 0

	beq case_0
    
power:
	cmp r2, #1
	beq sum
	mul r4, r5
	sub r2, #1
	bne power
    
case_0:
        mov r4, #1
        bne sum
    
sum:
        add r0, r4
        pop {pc}

