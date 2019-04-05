	global __class_java_lang_Short
__class_java_lang_Short:

section .data

		global __ref_SIT_java_lang_Short
	__ref_SIT_java_lang_Short:		dd 0

		global __ref_PARENTS_java_lang_Short
	__ref_PARENTS_java_lang_Short:		dd 00000000111000000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
			extern __method__java_lang_Number__intValue
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_lang_Number__intValue

section .text

		global __method__java_lang_Short__intValue
	__method__java_lang_Short__intValue:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Short__intValue

		_method_return___method__java_lang_Short__intValue:
			pop ebp
			ret

		global __method__java_lang_Short__toString
	__method__java_lang_Short__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Short__toString

		_method_return___method__java_lang_Short__toString:
			pop ebp
			ret

