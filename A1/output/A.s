extern __ref_SIT_java_lang_Number
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_foo_bar
extern __ref_SIT_java_lang_Short
extern __ref_SIT_Main
extern __ref_SIT_java_lang_Character
extern __ref_SIT_java_lang_String
extern __ref_SIT_Hello
extern __ref_SIT_java_lang_Integer
extern __method__java_lang_Object__toString
extern __ref_SIT_java_lang_Class
extern __ref_SIT_java_lang_Boolean
extern __ref_SIT_java_util_Arrays
extern __method__java_lang_Object__equals$java_lang_Object$
extern __ref_SIT_java_io_PrintStream
extern __method__java_lang_Object__clone
extern __field_java_lang_Boolean_MAX_VALUE
extern __ref_SIT_java_lang_Object
extern __method__java_lang_Object__hashCode
extern __ref_SIT_java_lang_Byte
extern __ref_SIT_Static
extern __field_java_lang_System_out
extern __field_java_lang_Byte_MAX_VALUE
extern __ref_SIT_java_lang_System
extern __field_java_lang_Integer_MAX_VALUE
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_A
__class_A:
		global __ref_SIT_A
	__ref_SIT_A:
		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A:
		dd 100000000001000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__A__test

;; Static fields

section .text

;; -----Methods-----
	global _start
_start:

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_util_Arrays
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_io_PrintStream
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_io_OutputStream
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_System
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Integer
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Byte
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Short
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Class
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Object
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_String
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Character
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Number
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Boolean
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_Hello
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_foo_bar
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_Main
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_Static
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_A
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

;; Static Field: __field_java_lang_System_out
mov eax, 3
mov ebx, __field_java_lang_System_out
mov [ebx], eax

;; Static Field: __field_java_lang_Integer_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Integer_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Byte_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Byte_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Boolean_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Boolean_MAX_VALUE
mov [ebx], eax

call @@@@main
mov ebx, eax
mov eax, 1
int 0x80


global @@@@main
@@@@main:
		global __STATIC_method__A__test
	__STATIC_method__A__test:
		push ebp
		mov ebp, esp

		;; ---declare i
		mov eax, 0

		push eax
		;; ---end of declare i

		;; ---declare j
		mov eax, 1

		push eax
		;; ---end of declare j

		;; ---declare q
		mov eax, 2

		push eax
		;; ---end of declare q

		;; if statement0
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 2
			jmp _method_return___STATIC_method__A__test


		jmp .endif0

		.else0:
			;elseClause ...
			;; ---declare d
			mov eax, 0

			push eax
			;; ---end of declare d


			.while1:
				;expression code...
				;; ompare_lt
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 10
				pop ebx
				cmp ebx, eax
				jl .lt1
				mov eax, 0
				jmp .end_lt1
				.lt1:
					mov eax, 1
				.end_lt1:

				cmp eax, 0
				je .endwhile1
				;; while statement code...
				;; ---declare xx
				mov eax, 3

				push eax
				;; ---end of declare xx


				.while2:
					;expression code...
					;; ompare_lt
					;; LHS code...
					;; Local Var j
					mov eax, ebp
					sub eax, 8
					mov eax, [eax]

					push eax
					;; RHS code...
					mov eax, 10
					pop ebx
					cmp ebx, eax
					jl .lt2
					mov eax, 0
					jmp .end_lt2
					.lt2:
						mov eax, 1
					.end_lt2:

					cmp eax, 0
					je .endwhile2
					;; while statement code...
					;; ---declare yy_j
					mov eax, 4

					push eax
					;; ---end of declare yy_j


					.while3:
						;expression code...
						;; ompare_lt
						;; LHS code...
						;; Local Var q
						mov eax, ebp
						sub eax, 12
						mov eax, [eax]

						push eax
						;; RHS code...
						mov eax, 3
						pop ebx
						cmp ebx, eax
						jl .lt3
						mov eax, 0
						jmp .end_lt3
						.lt3:
							mov eax, 1
						.end_lt3:

						cmp eax, 0
						je .endwhile3
						;; while statement code...
						;; ---declare zz_q
						mov eax, 5

						push eax
						;; ---end of declare zz_q


						add esp, 4

						jmp .while3

					.endwhile3:

						add esp, 4


					add esp, 4

					jmp .while2

				.endwhile2:

					add esp, 4


				;forInit code...
				;; ---declare m
				mov eax, 0

				push eax
				;; ---end of declare m


				.for4:
					;expression code...
					;; ompare_lt
					;; LHS code...
					;; Local Var m
					mov eax, ebp
					sub eax, 24
					mov eax, [eax]

					push eax
					;; RHS code...
					mov eax, 5
					pop ebx
					cmp ebx, eax
					jl .lt4
					mov eax, 0
					jmp .end_lt4
					.lt4:
						mov eax, 1
					.end_lt4:

					cmp eax, 0
					je .endfor4
					;statement code...
					;; ---declare yy_m
					mov eax, 4

					push eax
					;; ---end of declare yy_m


					;forInit code...
					;; ---declare n
					mov eax, 0

					push eax
					;; ---end of declare n


					.for5:
						;expression code...
						;; ompare_lt
						;; LHS code...
						;; Local Var n
						mov eax, ebp
						sub eax, 32
						mov eax, [eax]

						push eax
						;; RHS code...
						mov eax, 4
						pop ebx
						cmp ebx, eax
						jl .lt5
						mov eax, 0
						jmp .end_lt5
						.lt5:
							mov eax, 1
						.end_lt5:

						cmp eax, 0
						je .endfor5
						;statement code...
						;; ---declare zz_n
						mov eax, 6

						push eax
						;; ---end of declare zz_n


						add esp, 4



						;forUpdate code...
													;; Local Var n
							mov eax, ebp
							sub eax, 32

						push eax
							;; Plus
							;; LHS code...
							;; Local Var n
							mov eax, ebp
							sub eax, 32
							mov eax, [eax]

							push eax
							;; RHS code...
							mov eax, 1
							pop ebx
							add ebx, eax
							mov eax, ebx

						pop ebx
						mov [ebx], eax


						jmp .for5

					.endfor5:
						add esp, 4


					;; ---declare yy_2
					mov eax, 0

					push eax
					;; ---end of declare yy_2


					add esp, 8



					;forUpdate code...
											;; Local Var m
						mov eax, ebp
						sub eax, 24

					push eax
						;; Plus
						;; LHS code...
						;; Local Var m
						mov eax, ebp
						sub eax, 24
						mov eax, [eax]

						push eax
						;; RHS code...
						mov eax, 1
						pop ebx
						add ebx, eax
						mov eax, ebx

					pop ebx
					mov [ebx], eax


					jmp .for4

				.endfor4:
					add esp, 4


				add esp, 4

				jmp .while1

			.endwhile1:

				add esp, 4


			add esp, 4

			add esp, 4

		.endif0:
			add esp, 4

		mov eax, 0
		jmp _method_return___STATIC_method__A__test

		_method_return___STATIC_method__A__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__A__A
	__constructor__A__A:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
