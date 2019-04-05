	global __class_java_lang_Character
__class_java_lang_Character:

section .data

		global __ref_SIT_java_lang_Character
	__ref_SIT_java_lang_Character:		dd 0

		global __ref_PARENTS_java_lang_Character
	__ref_PARENTS_java_lang_Character:		dd 00000000010000100000b

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

section .text

		global __method__java_lang_Character__toString
	__method__java_lang_Character__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Character__toString

		_method_return___method__java_lang_Character__toString:
			pop ebp
			ret

