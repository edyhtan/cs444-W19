	global __class_java_lang_System
__class_java_lang_System:
section .data

		global __ref_SIT_java_lang_System
	__ref_SIT_java_lang_System		dd 0

		global __ref_PARENTS_java_lang_System
	__ref_PARENTS_java_lang_System		dd 0

		global __method__java_lang_System__getClass
	__method__java_lang_System__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_lang_System__hashCode
	__method__java_lang_System__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_lang_System__equals$java_lang_Object$
	__method__java_lang_System__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_lang_System__clone
	__method__java_lang_System__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_lang_System__toString
	__method__java_lang_System__toString:
		dd [__method__java_lang_Object__toString]

		global __STATIC_method__java_lang_System__gc
	__STATIC_method__java_lang_System__gc:
		dd __m_5

		global __field_java_lang_System_out
	__field_java_lang_System_out		dd 0

section .text

	__m_5:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_5:
			pop ebp
			ret

