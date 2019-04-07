extern __constructor__java_lang_Number__Number
extern __method__java_lang_String__charAt$int$
extern __method__java_lang_String__length
extern __STATIC_method__java_lang_String__valueOf$int$

	global __class_java_lang_Integer
__class_java_lang_Integer:

section .data

		global __ref_SIT_java_lang_Integer
	__ref_SIT_java_lang_Integer:
		dd 0

		global __ref_PARENTS_java_lang_Integer
	__ref_PARENTS_java_lang_Integer:
		dd 00000000011100000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_lang_Number__intValue
		dd __STATIC_method__java_lang_Integer__parseInt$java_lang_String$

;; Static fields
		global __field_java_lang_Integer_MAX_VALUE
	__field_java_lang_Integer_MAX_VALUE		dd 0


section .text

;; -----Methods-----
		global __method__java_lang_Integer__intValue
	__method__java_lang_Integer__intValue:
		push ebp
		mov ebp, esp

				;; Implicit This
		mov eax, [ebp + 0]
		;; Field value
		add eax, 4
		mov eax, [eax]

		jmp _method_return___method__java_lang_Integer__intValue

		_method_return___method__java_lang_Integer__intValue:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_Integer__parseInt$java_lang_String$
	__STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
		push ebp
		mov ebp, esp

				;; ---declare ret
		mov eax, 0

		push eax
		;; ---end of declare ret

		;; ---declare neg
		mov eax, 0

		push eax
		;; ---end of declare neg

		;; ---declare i
		mov eax, 0

		push eax
		;; ---end of declare i

		.while0:
			;expression code...
			;; logical_and
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 12
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
			call __method__java_lang_String__length

			add esp, 4
			pop ebx
			cmp ebx, eax
			jl .lt1
			mov eax, 0
			jmp .end_lt1
			.lt1:
				mov eax, 1
			.end_lt1:

			cmp eax, 0
			je .end_and0
			;; logical_or
			;; ompare_eq
			;; LHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			call __method__java_lang_String__charAt$int$

			add esp, 8
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			je .eq3
			mov eax, 0
			jmp .end_eq3
			.eq3:
				mov eax, 1
			.end_eq3:

			cmp eax, 1
			je .end_or2
			;; logical_and
			;; ompare_ge
			;; LHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			call __method__java_lang_String__charAt$int$

			add esp, 8
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			jge .ge5
			mov eax, 0
			jmp .end_ge5
			.ge5:
				mov eax, 1
			.end_ge5:

			cmp eax, 0
			je .end_and4
			;; ompare_le
			;; LHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			call __method__java_lang_String__charAt$int$

			add esp, 8
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			jle .le6
			mov eax, 0
			jmp .end_le6
			.le6:
				mov eax, 1
			.end_le6:

			.end_and4:

			.end_or2:

			.end_and0:

			cmp eax, 0
			je .endwhile0
			;; while statement code...
			;; if statement1
			;expression code...
			;; ompare_eq
			;; LHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			call __method__java_lang_String__charAt$int$

			add esp, 8
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			je .eq7
			mov eax, 0
			jmp .end_eq7
			.eq7:
				mov eax, 1
			.end_eq7:

			cmp eax, 0
			je .else1
			;thenClause ...


			jmp .endif1

			.else1:
				;elseClause ...



			.endif1:



			jmp .while0

		.endwhile0:

		;; if statement2
		;expression code...
		;; Local Var neg
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		cmp eax, 0
		je .else2
		;thenClause ...


		jmp .endif2

		.else2:
		.endif2:
		;; Local Var ret
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___STATIC_method__java_lang_Integer__parseInt$java_lang_String$

		_method_return___STATIC_method__java_lang_Integer__parseInt$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_Integer__toString
	__method__java_lang_Integer__toString:
		push ebp
		mov ebp, esp

				;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field value
			add eax, 4
			mov eax, [eax]

			push eax

		call __STATIC_method__java_lang_String__valueOf$int$

		add esp, 8
		jmp _method_return___method__java_lang_Integer__toString

		_method_return___method__java_lang_Integer__toString:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Integer__Integer$int$
	__constructor__java_lang_Integer__Integer$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__java_lang_Number__Number
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_Integer__Integer$java_lang_String$
	__constructor__java_lang_Integer__Integer$java_lang_String$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__java_lang_Number__Number
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_Integer__Integer
	__constructor__java_lang_Integer__Integer:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__java_lang_Number__Number
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: MAX_VALUE
				mov eax, 2147483647
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
