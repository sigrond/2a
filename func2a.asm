section	.text
global  func2a

func2a:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD [ebp+8]	;adres *a do eax

loop:
    mov	cl, BYTE [eax]
    test cl, cl
    jz koniec
    inc eax
	mov dl, BYTE [eax]
    test dl, dl
    jz koniec
    dec eax
    mov	BYTE [eax], dl
    inc eax
    mov	BYTE [eax], cl
    inc eax
    jmp loop

koniec:
	mov	eax, 0		;return a
	pop	ebp
	ret
