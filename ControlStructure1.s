@controlStructure1

.section .data
x: .word 1
.section .text
.globl _start
_start:
	ldr r1, =x
	ldr r1, [r1]
	cmp r1, #3
	bgt false
	sub r1, r1,  #1
	b next
	false:

		sub r1, r1, #2

	next:
	mov r7, #1
	svc #0
	.end
