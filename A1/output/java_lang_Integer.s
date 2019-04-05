	global __class_java_lang_Integer
__class_java_lang_Integer:

section .data

		global __ref_SIT_java_lang_Integer
	__ref_SIT_java_lang_Integer		dd 0

		global __ref_PARENTS_java_lang_Integer
	__ref_PARENTS_java_lang_Integer		dd 00000000011100000000b

	; Methods	
			extern __method__java_lang_Number__getClass
			extern __method__java_lang_Number__hashCode
			extern __method__java_lang_Number__equals$java_lang_Object$
			extern __method__java_lang_Number__clone
			extern __method__java_lang_Number__toString
			extern __method__java_lang_Number__intValue
		dd __method__java_lang_Number__getClass
		dd __method__java_lang_Number__hashCode
		dd __method__java_lang_Number__equals$java_lang_Object$
		dd __method__java_lang_Number__clone
		dd __method__java_lang_Number__toString
		dd __method__java_lang_Number__intValue
		dd __STATIC_method__java_lang_Integer__parseInt$java_lang_String$
		global __field_java_lang_Integer_MAX_VALUE
	__field_java_lang_Integer_MAX_VALUE		dd 0


section .text

		global __method__java_lang_Integer__intValue
	__method__java_lang_Integer__intValue:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Integer__intValue

		_method_return___method__java_lang_Integer__intValue:
			pop ebp
			ret

		global __STATIC_method__java_lang_Integer__parseInt$java_lang_String$
	__STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
		push ebp
		mov ebp, esp

		sub esp,12
		mov eax, 0
		mov [ebp-4], eax
		mov eax, 0
		mov [ebp-8], eax
		mov eax, 0
		mov [ebp-12], eax
		.while0:
			;expression code...
			cmp eax,0
			je .endwhile0

			;statement code...
				;expression code...
				cmp eax,0
				je .else1
				;thenClause ...

				jmp .endif1

				.else1:
					;elseClause ...
					
				.endif1:
				
			jmp .while0

		.endwhile0:

		;expression code...
		cmp eax,0
		je .else2
		;thenClause ...

		jmp .endif2

		.else2:
		.endif2:
		jmp _method_return___STATIC_method__java_lang_Integer__parseInt$java_lang_String$

		_method_return___STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
			pop ebp
			ret

		global __method__java_lang_Integer__toString
	__method__java_lang_Integer__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Integer__toString

		_method_return___method__java_lang_Integer__toString:
			pop ebp
			ret

