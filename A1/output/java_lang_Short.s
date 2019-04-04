	global __class_java_lang_Short
__class_java_lang_Short:
section .data

		global __ref_SIT_java_lang_Short
	__ref_SIT_java_lang_Short		dd 0

		global __ref_PARENTS_java_lang_Short
	__ref_PARENTS_java_lang_Short		dd 0

		global __method__java_lang_Short__getClass
	__method__java_lang_Short__getClass:
		dd [__method__java_lang_Number__getClass]

		global __method__java_lang_Short__hashCode
	__method__java_lang_Short__hashCode:
		dd [__method__java_lang_Number__hashCode]

		global __method__java_lang_Short__equals$java_lang_Object$
	__method__java_lang_Short__equals$java_lang_Object$:
		dd [__method__java_lang_Number__equals$java_lang_Object$]

		global __method__java_lang_Short__clone
	__method__java_lang_Short__clone:
		dd [__method__java_lang_Number__clone]

		global __method__java_lang_Short__toString
	__method__java_lang_Short__toString:
		dd [__method__java_lang_Number__toString]

		global __method__java_lang_Short__intValue
	__method__java_lang_Short__intValue:
		dd [__method__java_lang_Number__intValue]

section .text

	__method__java_lang_Number__intValue:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Number__intValue

		_method_return___method__java_lang_Number__intValue:
			pop ebp
			ret

	__method__java_lang_Number__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Number__toString

		_method_return___method__java_lang_Number__toString:
			pop ebp
			ret

