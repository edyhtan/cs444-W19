extern __method__java_lang_Object__clone
extern __exception
extern __method__java_lang_Number__intValue
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Number__Number
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __STATIC_method__java_lang_String__valueOf$int$


section .data

	global __class_java_lang_Integer
__class_java_lang_Integer:
		global __ref_SIT_java_lang_Integer
	__ref_SIT_java_lang_Integer:
		dd 0

		global __ref_PARENTS_java_lang_Integer
	__ref_PARENTS_java_lang_Integer:
		dd 000000000011100000000b

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
__field_java_lang_Integer_MAX_VALUE:
		dd 0


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
			;; Method Invocation: o.m(...)
			;; Names(ArgList)
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method:
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 48]

			call eax

			;; pop arguments
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
			;; Method Invocation: o.m(...)
			;; Names(ArgList)
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			;; class method:
			;; addr of o
			mov eax, [esp + 4]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 40]

			call eax

			;; pop arguments
			add esp, 8

			push eax
			;; RHS code...
			mov eax, 45
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
			;; Method Invocation: o.m(...)
			;; Names(ArgList)
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			;; class method:
			;; addr of o
			mov eax, [esp + 4]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 40]

			call eax

			;; pop arguments
			add esp, 8

			push eax
			;; RHS code...
			mov eax, 48
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
			;; Method Invocation: o.m(...)
			;; Names(ArgList)
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			;; class method:
			;; addr of o
			mov eax, [esp + 4]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 40]

			call eax

			;; pop arguments
			add esp, 8

			push eax
			;; RHS code...
			mov eax, 57
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
			;; Method Invocation: o.m(...)
			;; Names(ArgList)
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax

			;; class method:
			;; addr of o
			mov eax, [esp + 4]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 40]

			call eax

			;; pop arguments
			add esp, 8

			push eax
			;; RHS code...
			mov eax, 45
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
									;; Local Var neg
					mov eax, ebp
					sub eax, 8

				push eax
					;; Unary boolean negation
					;; Local Var neg
					mov eax, ebp
					sub eax, 8
					mov eax, [eax]

					mov ebx, 1
					sub ebx, eax
					mov eax, ebx
				pop ebx
				mov [ebx], eax


			jmp .endif1

			.else1:
				;elseClause ...
									;; Local Var ret
					mov eax, ebp
					sub eax, 4

				push eax
					;; Minus
					;; LHS code...
					;; Plus
					;; LHS code...
					;; Mult
					;; LHS code...
					;; Local Var ret
					mov eax, ebp
					sub eax, 4
					mov eax, [eax]

					push eax
					;; RHS code...
					mov eax, 10
					pop ebx
					imul ebx, eax
					mov eax, ebx

					push eax
					;; RHS code...
					;; Method Invocation: o.m(...)
					;; Names(ArgList)
						;; Local Var s
						mov eax, ebp
						add eax, 8
						mov eax, [eax]

					cmp eax, 0
					je __exception
					;; non-static, pushing reference
					push eax

					;; Pushing args
						;; Local Var i
						mov eax, ebp
						sub eax, 12
						mov eax, [eax]

						push eax

					;; class method:
					;; addr of o
					mov eax, [esp + 4]
					;; vtable
					mov eax, [eax]
					;; addr of m body
					mov eax, [eax + 40]

					call eax

					;; pop arguments
					add esp, 8

					pop ebx
					add ebx, eax
					mov eax, ebx

					push eax
					;; RHS code...
					mov eax, 48
					pop ebx
					sub ebx, eax
					mov eax, ebx

				pop ebx
				mov [ebx], eax



			.endif1:

							;; Local Var i
				mov eax, ebp
				sub eax, 12

			push eax
				;; Plus
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


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
							;; Local Var ret
				mov eax, ebp
				sub eax, 4

			push eax
				;; Unary number negation
				;; Local Var ret
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				mov ebx, 0
				sub ebx, eax
				mov eax, ebx
			pop ebx
			mov [ebx], eax


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

		;; Method Invocation: o.m(...)
		;; Names(ArgList)

		;; static method, dont push this

		;; Pushing args
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field value
			add eax, 4
			mov eax, [eax]

			push eax

		;; static method:
		call __STATIC_method__java_lang_String__valueOf$int$

		add esp, 4

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
							;; Implicit This
				mov eax, [ebp + 12]
				;; Field value
				add eax, 4

			push eax
				;; Local Var i
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

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
							;; Implicit This
				mov eax, [ebp + 12]
				;; Field value
				add eax, 4

			push eax
				;; Method Invocation: o.m(...)
				;; Names(ArgList)

				;; static method, dont push this

				;; Pushing args
					;; Local Var s
					mov eax, ebp
					add eax, 8
					mov eax, [eax]

					push eax

				;; static method:
				call __STATIC_method__java_lang_Integer__parseInt$java_lang_String$

				add esp, 4

			pop ebx
			mov [ebx], eax

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
							;; Implicit This
				mov eax, [ebp + 8]
				;; Field value
				add eax, 4

			push eax
				mov eax, 0
			pop ebx
			mov [ebx], eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
