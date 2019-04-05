	global __class_java_lang_Number
__class_java_lang_Number:

section .data

		global __ref_SIT_java_lang_Number
	__ref_SIT_java_lang_Number		dd 0

		global __ref_PARENTS_java_lang_Number
	__ref_PARENTS_java_lang_Number		dd 00000000011000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_lang_Number__intValue

section .text

		global __method__java_lang_Number__intValue
	__method__java_lang_Number__intValue:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___method__java_lang_Number__intValue:
			pop ebp
			ret

