	global __class_java_util_Arrays
__class_java_util_Arrays:
section .data

		global __ref_SIT_java_util_Arrays
	__ref_SIT_java_util_Arrays		dd 0

		global __ref_PARENTS_java_util_Arrays
	__ref_PARENTS_java_util_Arrays		dd 0

		global __method__java_util_Arrays__getClass
	__method__java_util_Arrays__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_util_Arrays__hashCode
	__method__java_util_Arrays__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_util_Arrays__equals$java_lang_Object$
	__method__java_util_Arrays__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_util_Arrays__clone
	__method__java_util_Arrays__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_util_Arrays__toString
	__method__java_util_Arrays__toString:
		dd [__method__java_lang_Object__toString]

		global __STATIC_method__java_util_Arrays__equals$char@$char@$
	__STATIC_method__java_util_Arrays__equals$char@$char@$:
		dd __m_5

		global __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$
	__STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
		dd __m_6

section .text

	__m_6:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else0
		;thenClause ...
		mov eax, false
		jmp _method_return___m_6

		jmp .endif0

		.else0:
		.endif0:
		add esp,4
		mov eax, true
		jmp _method_return___m_6

		_method_return___m_6:
			pop ebp
			ret

	__m_5:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else2
		;thenClause ...
		mov eax, false
		jmp _method_return___m_5

		jmp .endif2

		.else2:
		.endif2:
		add esp,4
		mov eax, true
		jmp _method_return___m_5

		_method_return___m_5:
			pop ebp
			ret

