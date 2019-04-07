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

	global __class_J1_sim_and
__class_J1_sim_and:
		global __ref_SIT_J1_sim_and
	__ref_SIT_J1_sim_and:
		dd 0

		global __ref_PARENTS_J1_sim_and
	__ref_PARENTS_J1_sim_and:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_sim_and__test
		dd __method__J1_sim_and__sim_and$int$int$

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

mov ebx, __ref_SIT_J1_sim_and
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
		global __STATIC_method__J1_sim_and__test
	__STATIC_method__J1_sim_and__test:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Primary.id(ArgList)
			;; ---new [J1_sim_and] ()
			;; Allocating size of 4
			mov eax, 4
						call __malloc
							mov ebx, __class_J1_sim_and
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
			call __constructor__J1_sim_and__J1_sim_and
			add esp, 0
			pop eax

			;; ---end of new [J1_sim_and] ()
		;; Null Check:
		cmp eax, 0
		je __exception
		push eax

		;; Pushing args
			;; Minus
			;; LHS code...
			mov eax, 65535
			push eax
			;; RHS code...
			mov eax, 128
			pop ebx
			sub ebx, eax
			mov eax, ebx

			push eax

			;; Minus
			;; LHS code...
			mov eax, 255
			push eax
			;; RHS code...
			mov eax, 4
			pop ebx
			sub ebx, eax
			mov eax, ebx

			push eax

		;; class method:
		;; addr of o
		mov eax, [esp + 8]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 32]

		call eax

		;; pop arguments
		add esp, 12

		;; ---End of method invocation
		jmp _method_return___STATIC_method__J1_sim_and__test

		_method_return___STATIC_method__J1_sim_and__test:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_sim_and__sim_and$int$int$
	__method__J1_sim_and__sim_and$int$int$:
		push ebp
		mov ebp, esp

		;; if statement0
		;expression code...
		;; logical_or
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

		cmp eax, 1
		je .end_or0
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

		.end_or0:

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 0
			jmp _method_return___method__J1_sim_and__sim_and$int$int$

		jmp .endif0

		.else0:
		.endif0:
		;; ---declare bit0
		;; logical_and
		;; ompare_ne
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
		mov eax, 0
		pop ebx
		cmp ebx, eax
		jne .ne4
		mov eax, 0
		jmp .end_ne4
		.ne4:
			mov eax, 1
		.end_ne4:

		cmp eax, 0
		je .end_and3
		;; ompare_ne
		;; LHS code...
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

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		jne .ne5
		mov eax, 0
		jmp .end_ne5
		.ne5:
			mov eax, 1
		.end_ne5:

		.end_and3:


		push eax
		;; ---end of declare bit0

		;; ---declare result
		;; Mult
		;; LHS code...
		;; ---Method Invocation: 
		;; Names(ArgList)
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

		;; class method:
		;; addr of o
		mov eax, [esp + 8]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 32]

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

		;; if statement1
		;expression code...
		;; Local Var bit0
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		cmp eax, 0
		je .else1
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


		jmp .endif1

		.else1:
		.endif1:
		;; Local Var result
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		jmp _method_return___method__J1_sim_and__sim_and$int$int$

		_method_return___method__J1_sim_and__sim_and$int$int$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_sim_and__J1_sim_and
	__constructor__J1_sim_and__J1_sim_and:
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
