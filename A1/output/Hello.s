	global __class_Hello
__class_Hello:

section .data

		global __ref_SIT_Hello
	__ref_SIT_Hello		dd 0

		global __ref_PARENTS_Hello
	__ref_PARENTS_Hello		dd 00100000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Hello__like$Hello$
		dd __method__Hello__k
		dd __method__Hello__whatYouSee

section .text

		global __method__Hello__whatYouSee
	__method__Hello__whatYouSee:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___method__Hello__whatYouSee:
			pop ebp
			ret

		global __method__Hello__like$Hello$
	__method__Hello__like$Hello$:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__Hello__like$Hello$

		_method_return___method__Hello__like$Hello$:
			pop ebp
			ret

		global __method__Hello__k
	__method__Hello__k:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__Hello__k

		_method_return___method__Hello__k:
			pop ebp
			ret

