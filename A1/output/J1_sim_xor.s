extern __ref_SIT_java_lang_Number
extern __exception
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_java_lang_Short
extern __ref_SIT_java_lang_Character
extern __class_ArrayTemplate
extern __constructor__java_io_PrintStream__PrintStream
extern __ref_SIT_java_lang_String
extern __ref_SIT_java_lang_Integer
extern __method__java_lang_Object__toString
extern __ref_SIT_java_lang_Boolean
extern __ref_SIT_java_lang_Class
extern __ref_SIT_java_util_Arrays
extern __method__java_lang_Object__equals$java_lang_Object$
extern __ref_SIT_java_io_PrintStream
extern __class_java_io_PrintStream
extern __method__java_lang_Object__clone
extern __ref_SIT_ArrayTemplate
extern __field_java_lang_Boolean_MAX_VALUE
extern __ref_SIT_java_lang_Object
extern __method__java_lang_Object__hashCode
extern __ref_SIT_java_lang_Byte
extern __field_java_lang_System_out
extern __field_java_lang_Byte_MAX_VALUE
extern __ref_SIT_java_lang_System
extern __field_java_lang_Integer_MAX_VALUE
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_J1_sim_xor
__class_J1_sim_xor:
		global __ref_SIT_J1_sim_xor
	__ref_SIT_J1_sim_xor:
		dd 0

		global __ref_PARENTS_J1_sim_xor
	__ref_PARENTS_J1_sim_xor:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__J1_sim_xor__crypt$java_lang_String$int$
		dd __STATIC_method__J1_sim_xor__test
		dd __method__J1_sim_xor__sim_xor$int$int$

;; Static fields

section .text

;; -----Methods-----
	global _start
_start:

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

mov ebx, __ref_SIT_J1_sim_xor
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx
mov ebx, __ref_SIT_ArrayTemplate
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

;; Static Field: __field_java_lang_Boolean_MAX_VALUE
	;; casting
	;; primitive run-time casting to [byte]
		mov eax, 127
	and eax, 0xff
mov ebx, __field_java_lang_Boolean_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Byte_MAX_VALUE
	;; casting
	;; primitive run-time casting to [byte]
		mov eax, 127
	and eax, 0xff
mov ebx, __field_java_lang_Byte_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Integer_MAX_VALUE
	mov eax, 2147483647
mov ebx, __field_java_lang_Integer_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_System_out
	;; ---new [java, io, PrintStream] ()
	;; Allocating size of 4
	mov eax, 4
		call __malloc
			mov ebx, __class_java_io_PrintStream
	mov [eax], ebx

	;; Pushing object
	push eax

	;; Pushing args:
	call __constructor__java_io_PrintStream__PrintStream
	add esp, 0
	pop eax

	;; ---end of new [java, io, PrintStream] ()
mov ebx, __field_java_lang_System_out
mov [ebx], eax

call @@@@main
mov ebx, eax
mov eax, 1
int 0x80


global @@@@main
@@@@main:
		global __STATIC_method__J1_sim_xor__test
	__STATIC_method__J1_sim_xor__test:
		push ebp
		mov ebp, esp

		;; ---declare obj
		;; ---new [J1_sim_xor] ()
		;; Allocating size of 4
		mov eax, 4
				call __malloc
					mov ebx, __class_J1_sim_xor
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__J1_sim_xor__J1_sim_xor
		add esp, 0
		pop eax

		;; ---end of new [J1_sim_xor] ()

		push eax
		;; ---end of declare obj

		;; ---declare s
		;; Plus
		;; LHS code...
				push eax
		;; RHS code...
		;; casting
		;; primitive run-time casting to [char]
				mov eax, 11
		and eax, 0xfff
		pop ebx
		add ebx, eax
		mov eax, ebx


		push eax
		;; ---end of declare s

		;; ---Method Invocation: 
		;; Names(ArgList)

			mov eax, __field_java_lang_System_out
			mov eax, [eax]

		;; Null Check:
		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			;; ---Method Invocation: 
			;; Names(ArgList)
				;; Local Var obj
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
				;; Local Var s
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax

				mov eax, 42
				push eax

			;; class method: crypt
			;; addr of o
			mov eax, [esp + 8]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 28]

			call eax

			;; pop arguments
			add esp, 12

			;; ---End of method invocation
			push eax

		;; class method: println
		;; addr of o
		mov eax, [esp + 4]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 80]

		call eax

		;; pop arguments
		add esp, 8

		;; ---End of method invocation
		;; ---declare s2
		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var obj
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

		;; Null Check:
		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			;; Local Var s
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			push eax

			;; Mult
			;; LHS code...
			mov eax, 6
			push eax
			;; RHS code...
			mov eax, 9
			pop ebx
			imul ebx, eax
			mov eax, ebx

			push eax

		;; class method: crypt
		;; addr of o
		mov eax, [esp + 8]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 28]

		call eax

		;; pop arguments
		add esp, 12

		;; ---End of method invocation

		push eax
		;; ---end of declare s2

		;; if statement0
		;expression code...
		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var s2
			mov eax, ebp
			sub eax, 12
			mov eax, [eax]

		;; Null Check:
		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			;; casting
									cmp eax, 0
			je .cast_end3
			mov eax, [eax]
			mov eax, [eax+4]
			shr eax, 10
			and eax, 0x1
			cmp eax, 0
			je __exception
			.cast_end3:
			push eax

		;; class method: equals
		;; addr of o
		mov eax, [esp + 4]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 0]

		call eax

		;; pop arguments
		add esp, 8

		;; ---End of method invocation
		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 123
			jmp _method_return___STATIC_method__J1_sim_xor__test

		jmp .endif0

		.else0:
			;elseClause ...
			mov eax, 0
			jmp _method_return___STATIC_method__J1_sim_xor__test

		.endif0:

		_method_return___STATIC_method__J1_sim_xor__test:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_sim_xor__crypt$java_lang_String$int$
	__method__J1_sim_xor__crypt$java_lang_String$int$:
		push ebp
		mov ebp, esp

		;; ---declare sb
		
		push eax
		;; ---end of declare sb

		;forInit code...
		;; ---declare i
		mov eax, 0

		push eax
		;; ---end of declare i


		.for1:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			push eax
			;; RHS code...
			;; ---Method Invocation: 
			;; Names(ArgList)
				;; Local Var org
				mov eax, ebp
				add eax, 12
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: length
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 48]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			cmp ebx, eax
			jl .lt0
			mov eax, 0
			jmp .end_lt0
			.lt0:
				mov eax, 1
			.end_lt0:

			cmp eax, 0
			je .endfor1
			;statement code...
							;; Local Var sb
				mov eax, ebp
				sub eax, 4

			push eax
				;; Plus
				;; LHS code...
				;; Local Var sb
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				;; casting
				;; primitive run-time casting to [char]
								;; ---Method Invocation: 
				;; Names(ArgList)
				mov eax, [ebp+0]
				;; Null Check:
				cmp eax, 0
				je __exception
				;; non-static, pushing reference
				push eax

				;; Pushing args
					;; casting
					;; primitive run-time casting to [int]
										;; ---Method Invocation: 
					;; Names(ArgList)
						;; Local Var org
						mov eax, ebp
						add eax, 12
						mov eax, [eax]

					;; Null Check:
					cmp eax, 0
					je __exception
					;; non-static, pushing reference
					push eax

					;; Pushing args
						;; Local Var i
						mov eax, ebp
						sub eax, 8
						mov eax, [eax]

						push eax

					;; class method: charAt
					;; addr of o
					mov eax, [esp + 4]
					;; vtable
					mov eax, [eax]
					;; addr of m body
					mov eax, [eax + 40]

					call eax

					;; pop arguments
					add esp, 8

					;; ---End of method invocation
										push eax

					;; Local Var key
					mov eax, ebp
					add eax, 8
					mov eax, [eax]

					push eax

				;; class method: sim_xor
				;; addr of o
				mov eax, [esp + 8]
				;; vtable
				mov eax, [eax]
				;; addr of m body
				mov eax, [eax + 36]

				call eax

				;; pop arguments
				add esp, 12

				;; ---End of method invocation
				and eax, 0xfff
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax



			;forUpdate code...
							;; Local Var i
				mov eax, ebp
				sub eax, 8

			push eax
				;; Plus
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


			jmp .for1

		.endfor1:
			add esp, 4

		;; Local Var sb
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___method__J1_sim_xor__crypt$java_lang_String$int$

		_method_return___method__J1_sim_xor__crypt$java_lang_String$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_sim_xor__sim_xor$int$int$
	__method__J1_sim_xor__sim_xor$int$int$:
		push ebp
		mov ebp, esp

		;; if statement2
		;expression code...
		;; logical_and
		;; ompare_eq
		;; LHS code...
		;; Local Var x
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq1
		mov eax, 0
		jmp .end_eq1
		.eq1:
			mov eax, 1
		.end_eq1:

		cmp eax, 0
		je .end_and0
		;; ompare_eq
		;; LHS code...
		;; Local Var y
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq2
		mov eax, 0
		jmp .end_eq2
		.eq2:
			mov eax, 1
		.end_eq2:

		.end_and0:

		cmp eax, 0
		je .else2
		;thenClause ...
			mov eax, 0
			jmp _method_return___method__J1_sim_xor__sim_xor$int$int$

		jmp .endif2

		.else2:
		.endif2:
		;; ---declare bit0
		;; ompare_eq
		;; LHS code...
		;; Plus
		;; LHS code...
		;; Div
		;; RHS code...
		mov eax, 2
		cmp eax, 0
		je __exception
		push eax
		;; LHS code...
		;; Local Var x
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		pop ebx
		mov edx, 0
		idiv ebx
		;; Mod
mov eax, edx

		push eax
		;; RHS code...
		;; Div
		;; RHS code...
		mov eax, 2
		cmp eax, 0
		je __exception
		push eax
		;; LHS code...
		;; Local Var y
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		pop ebx
		mov edx, 0
		idiv ebx
		;; Mod
mov eax, edx

		pop ebx
		add ebx, eax
		mov eax, ebx

		push eax
		;; RHS code...
		mov eax, 1
		pop ebx
		cmp ebx, eax
		je .eq3
		mov eax, 0
		jmp .end_eq3
		.eq3:
			mov eax, 1
		.end_eq3:


		push eax
		;; ---end of declare bit0

		;; ---declare result
		;; Mult
		;; LHS code...
		;; ---Method Invocation: 
		;; Names(ArgList)
		mov eax, [ebp+16]
		;; Null Check:
		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			;; Div
			;; RHS code...
			mov eax, 2
			cmp eax, 0
			je __exception
			push eax
			;; LHS code...
			;; Local Var x
			mov eax, ebp
			add eax, 12
			mov eax, [eax]

			pop ebx
			mov edx, 0
			idiv ebx

			push eax

			;; Div
			;; RHS code...
			mov eax, 2
			cmp eax, 0
			je __exception
			push eax
			;; LHS code...
			;; Local Var y
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			pop ebx
			mov edx, 0
			idiv ebx

			push eax

		;; class method: sim_xor
		;; addr of o
		mov eax, [esp + 8]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 36]

		call eax

		;; pop arguments
		add esp, 12

		;; ---End of method invocation
		push eax
		;; RHS code...
		mov eax, 2
		pop ebx
		imul ebx, eax
		mov eax, ebx


		push eax
		;; ---end of declare result

		;; if statement3
		;expression code...
		;; Local Var bit0
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		cmp eax, 0
		je .else3
		;thenClause ...
							;; Local Var result
				mov eax, ebp
				sub eax, 8

			push eax
				;; Plus
				;; LHS code...
				;; Local Var result
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


		jmp .endif3

		.else3:
		.endif3:
		;; Local Var result
		mov eax, ebpquit
		sub eax, 8
		mov eax, [eax]

		jmp _method_return___method__J1_sim_xor__sim_xor$int$int$

		_method_return___method__J1_sim_xor__sim_xor$int$int$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_sim_xor__J1_sim_xor
	__constructor__J1_sim_xor__J1_sim_xor:
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
