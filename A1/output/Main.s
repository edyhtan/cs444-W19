	global __class_Main
__class_Main:
section .data

		global __ref_SIT_Main
	__ref_SIT_Main		dd 0

		global __ref_PARENTS_Main
	__ref_PARENTS_Main		dd 0

		global __method__Main__getClass
	__method__Main__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__Main__hashCode
	__method__Main__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__Main__equals$java_lang_Object$
	__method__Main__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__Main__clone
	__method__Main__clone:
		dd [__method__java_lang_Object__clone]

		global __method__Main__toString
	__method__Main__toString:
		dd [__method__java_lang_Object__toString]

		global __method__Main__test
	__method__Main__test:
		dd __m_5

section .text

	__m_5:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_5:
			pop ebp
			ret

