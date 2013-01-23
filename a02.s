.section .bss
.section .data
msg:
	.ascii "hello this message is from asm function"
val:
	.space 30,0
len=.-msg
.section .text
.globl	pntmsg
pntmsg:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%esi
	movl $val,%edi
0:
	lodsb
	testb %al,%al
	jz    1f
	stosb
	jmp   0b
1:
	movb $'\n,%al
	stosb
	movl $len,%edx
	movl $msg,%ecx
	movl $1,%ebx
	movl $4,%eax
	int  $0x80
	leave
	ret

