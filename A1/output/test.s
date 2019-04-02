mov eax, 5
mov ebx, 6

	push eax
	sub eax, ebx
	cmp eax, 0
	jg end
	pop ebx

end:	
	mov eax, 1	
	int 0x80
