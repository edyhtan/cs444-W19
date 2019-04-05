	global __class_Main
__class_Main:

section .data

		global __ref_SIT_Main
	__ref_SIT_Main:		dd 0

		global __ref_PARENTS_Main
	__ref_PARENTS_Main:		dd 01000000010000000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Main__test

section .text

		global __method__Main__test
	__method__Main__test:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___method__Main__test:
			pop ebp
			ret

