extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__Main__Main

	global __class_Static
__class_Static:

section .data

		global __ref_SIT_Static
	__ref_SIT_Static:
		dd 0

		global __ref_PARENTS_Static
	__ref_PARENTS_Static:
		dd 11000000010000000000b

	; Methods	
																	dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Static__foo2

section .text

;; -----Methods-----
		global __method__Static__foo2
	__method__Static__foo2:
		push ebp
		mov ebp, esp

		mov eax, 0
		jmp _method_return___method__Static__foo2

		_method_return___method__Static__foo2:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__Static__Static
	__constructor__Static__Static:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__Main__Main
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: static__
				mov eax, 0
		mov ebx, [esp]
		add ebx,12
		mov [ebx], eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
