add ebx, 4
add ebx, 0
add esp, 4
add ebx, 4
add ebx, 0
add esp, 4
add ebx, 4
add ebx, 0
add esp, 4

	global __class_java_lang_Integer
__class_java_lang_Integer:

section .data

		global __ref_SIT_java_lang_Integer
	__ref_SIT_java_lang_Integer		dd 0

		global __ref_PARENTS_java_lang_Integer
	__ref_PARENTS_java_lang_Integer		dd 00000001001000100000b

	; Methods	
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

-----Methods-----
		global __method__java_lang_Integer__intValue
	__method__java_lang_Integer__intValue:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_Integer__intValue

		_method_return___method__java_lang_Integer__intValue:
			pop ebp
			ret

		global __STATIC_method__java_lang_Integer__parseInt$java_lang_String$
	__STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
		push ebp
		mov ebp, esp

				sub esp,4
		mov eax, 0

		mov [ebp-4], eax
		sub esp,4
		mov eax, 0

		mov [ebp-8], eax
		sub esp,4
		mov eax, 0

		mov [ebp-12], eax
		.while0:
			;expression code...

			cmp eax,0
			je .endwhile0
			;statement code...
			;expression code...
			;; LHS code...
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp eax,ebx
			je .eq0
			mov eax, 0
			jmp .end_eq0
			.eq0:
				mov eax, 1
			.end_eq0:

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

				jmp _method_return___method__java_lang_Integer__toString

		_method_return___method__java_lang_Integer__toString:
			pop ebp
			ret

;; -----Constructors-----
			__constructor__java_lang_Integer__Integer$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
		mov eax, __constuctor__java_lang_Number__Number
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
			__constructor__java_lang_Integer__Integer$java_lang_String$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
		mov eax, __constuctor__java_lang_Number__Number
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
			__constructor__java_lang_Integer__Integer:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
		mov eax, __constuctor__java_lang_Number__Number
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
