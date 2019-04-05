add ebx, 8
add esp, 4

	global __class_Static
__class_Static:

section .data

		global __ref_SIT_Static
	__ref_SIT_Static		dd 0

		global __ref_PARENTS_Static
	__ref_PARENTS_Static		dd 01100000001000000000b

	; Methods	
		dd __method__Main__getClass
		dd __method__Main__hashCode
		dd __method__Main__equals$java_lang_Object$
		dd __method__Main__clone
		dd __method__Main__toString
		dd __method__Main__test
		dd __method__Static__foo2

section .text

-----Methods-----
		global __method__Static__foo2
	__method__Static__foo2:
		push ebp
		mov ebp, esp

				mov eax, 0
		jmp _method_return___method__Static__foo2

		_method_return___method__Static__foo2:
			pop ebp
			ret

;; -----Constructors-----
			__constructor__Static__Static:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
		mov eax, __constuctor__Main__Main
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: static__
				mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
