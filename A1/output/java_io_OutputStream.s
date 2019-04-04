	global __class_java_io_OutputStream
__class_java_io_OutputStream:
section .data

		global __ref_SIT_java_io_OutputStream
	__ref_SIT_java_io_OutputStream		dd 0

		global __ref_PARENTS_java_io_OutputStream
	__ref_PARENTS_java_io_OutputStream		dd 0

		global __method__java_io_OutputStream__getClass
	__method__java_io_OutputStream__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_io_OutputStream__hashCode
	__method__java_io_OutputStream__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_io_OutputStream__equals$java_lang_Object$
	__method__java_io_OutputStream__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_io_OutputStream__clone
	__method__java_io_OutputStream__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_io_OutputStream__toString
	__method__java_io_OutputStream__toString:
		dd [__method__java_lang_Object__toString]

		global __method__java_io_OutputStream__flush
	__method__java_io_OutputStream__flush:
		dd __m_5

		global __STATIC_method__java_io_OutputStream__nativeWrite$int$
	__STATIC_method__java_io_OutputStream__nativeWrite$int$:
		dd __m_6

		global __method__java_io_OutputStream__write$int$
	__method__java_io_OutputStream__write$int$:
		dd __m_7

		global __method__java_io_OutputStream__write$char$
	__method__java_io_OutputStream__write$char$:
		dd __m_8

section .text

	__m_8:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_8:
			pop ebp
			ret

	__m_7:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_7:
			pop ebp
			ret

	__m_6:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_6:
			pop ebp
			ret

	__m_5:
		push ebp
		mov ebp, esp

		sub esp,0

		_method_return___m_5:
			pop ebp
			ret

