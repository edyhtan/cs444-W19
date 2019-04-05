	global __class_Static
__class_Static:

section .data

		global __ref_SIT_Static
	__ref_SIT_Static		dd 0

		global __ref_PARENTS_Static
	__ref_PARENTS_Static		dd 11000000010000000000b

	; Methods	
		dd __method__Main__getClass
		dd __method__Main__hashCode
		dd __method__Main__equals$java_lang_Object$
		dd __method__Main__clone
		dd __method__Main__toString
		dd __method__Main__test
		dd __method__Static__foo2

section .text

		global __method__Static__foo2
	__method__Static__foo2:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, 0
		jmp _method_return___method__Static__foo2

		_method_return___method__Static__foo2:
			pop ebp
			ret

