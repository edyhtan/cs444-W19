	global __class_java_lang_Object
__class_java_lang_Object:
section .data

		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object		dd 0

		global __method__java_lang_Object__getClass
	__method__java_lang_Object__getClass:
		dd __m_0

		global __method__java_lang_Object__hashCode
	__method__java_lang_Object__hashCode:
		dd __m_1

		global __method__java_lang_Object__equals$java_lang_Object$
	__method__java_lang_Object__equals$java_lang_Object$:
		dd __m_2

		global __method__java_lang_Object__clone
	__method__java_lang_Object__clone:
		dd __m_3

		global __method__java_lang_Object__toString
	__method__java_lang_Object__toString:
		dd __m_4

section .text

	__m_2:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_2

		_method_return___m_2:
			pop ebp
			ret

	__m_4:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, "Some random object"
		jmp _method_return___m_4

		_method_return___m_4:
			pop ebp
			ret

	__m_1:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, 42
		jmp _method_return___m_1

		_method_return___m_1:
			pop ebp
			ret

	__m_3:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_3

		_method_return___m_3:
			pop ebp
			ret

	__m_0:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, null
		jmp _method_return___m_0

		_method_return___m_0:
			pop ebp
			ret

