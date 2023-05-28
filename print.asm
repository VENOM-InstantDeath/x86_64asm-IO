section .text
_print:
	mov rax,0
	call _loop
	mov rdx,rax
	mov rax,1
	mov rdi,1
	sub rsi,rdx
	syscall
	ret
_loop:
	cmp byte [rsi], 0
	je _ret
	inc rax
	inc rsi
	jmp _loop
_ret: ret
