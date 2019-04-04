	global __class_java_lang_Byte
__class_java_lang_Byte:
section .data

		global __ref_SIT_java_lang_Byte
	__ref_SIT_java_lang_Byte		dd 0

		global __ref_PARENTS_java_lang_Byte
	__ref_PARENTS_java_lang_Byte		dd 0

		global __method__java_lang_Byte__getClass
	__method__java_lang_Byte__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_lang_Byte__hashCode
	__method__java_lang_Byte__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_lang_Byte__equals$java_lang_Object$
	__method__java_lang_Byte__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_lang_Byte__clone
	__method__java_lang_Byte__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_lang_Byte__toString
	__method__java_lang_Byte__toString:
		dd [__method__java_lang_Object__toString]

		global __field_java_lang_Byte_MAX_VALUE
	__field_java_lang_Byte_MAX_VALUE		dd 0

section .text

	__method__java_lang_Object__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Object__toString

		_method_return___method__java_lang_Object__toString:
			pop ebp
			ret

