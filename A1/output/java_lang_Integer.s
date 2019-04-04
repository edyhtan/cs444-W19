	global __class_java_lang_Integer
__class_java_lang_Integer:
section .data

		global __ref_SIT_java_lang_Integer
	__ref_SIT_java_lang_Integer		dd 0

		global __ref_PARENTS_java_lang_Integer
	__ref_PARENTS_java_lang_Integer		dd 0

		global __method__java_lang_Integer__getClass
	__method__java_lang_Integer__getClass:
		dd [__method__java_lang_Number__getClass]

		global __method__java_lang_Integer__hashCode
	__method__java_lang_Integer__hashCode:
		dd [__method__java_lang_Number__hashCode]

		global __method__java_lang_Integer__equals$java_lang_Object$
	__method__java_lang_Integer__equals$java_lang_Object$:
		dd [__method__java_lang_Number__equals$java_lang_Object$]

		global __method__java_lang_Integer__clone
	__method__java_lang_Integer__clone:
		dd [__method__java_lang_Number__clone]

		global __method__java_lang_Integer__toString
	__method__java_lang_Integer__toString:
		dd [__method__java_lang_Number__toString]

		global __method__java_lang_Integer__intValue
	__method__java_lang_Integer__intValue:
		dd [__method__java_lang_Number__intValue]

		global __STATIC_method__java_lang_Integer__parseInt$java_lang_String$
	__STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
		dd __m_6

		global __field_java_lang_Integer_MAX_VALUE
	__field_java_lang_Integer_MAX_VALUE		dd 0

section .text

	__method__java_lang_Number__intValue:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Number__intValue

		_method_return___method__java_lang_Number__intValue:
			pop ebp
			ret

	__m_6:
		push ebp
		mov ebp, esp

		sub esp,12
		mov eax, 0
		mov [ebp-4], eax
		mov eax, false
		mov [ebp-8], eax
		mov eax, 0
		mov [ebp-12], eax
		.while0:
			;expression code...
			cmp eax,0
			je .endwhile0
			;expression code...
			cmp eax,0
			je .else1
			;thenClause ...

			jmp .endif1

			.else1:
				;elseClause ...
				
			.endif1:
						;statement code...
			jmp .while0

		.endwhile0:

		;expression code...
		cmp eax,0
		je .else2
		;thenClause ...

		jmp .endif2

		.else2:
		.endif2:
		jmp _method_return___m_6

		_method_return___m_6:
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

