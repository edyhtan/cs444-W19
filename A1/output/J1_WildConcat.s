extern __ref_SIT_java_lang_Number
extern __exception
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_java_lang_Short
extern __ref_SIT_java_lang_Character
extern __constructor__java_lang_String__String$char@$
extern __class_ArrayTemplate
extern __constructor__java_io_PrintStream__PrintStream
extern __ref_SIT_java_lang_String
extern __new_array
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
extern __class_java_lang_String
extern __method__java_lang_Object__hashCode
extern __ref_SIT_java_lang_Byte
extern __field_java_lang_System_out
extern __field_java_lang_Byte_MAX_VALUE
extern __ref_SIT_java_lang_System
extern __field_java_lang_Integer_MAX_VALUE
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_J1_WildConcat
__class_J1_WildConcat:
		global __ref_SIT_J1_WildConcat
	__ref_SIT_J1_WildConcat:
		dd 0

		global __ref_PARENTS_J1_WildConcat
	__ref_PARENTS_J1_WildConcat:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_WildConcat__test
		dd __method__J1_WildConcat__foo
		dd __method__J1_WildConcat__concat

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

mov ebx, __ref_SIT_J1_WildConcat
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
		global __STATIC_method__J1_WildConcat__test
	__STATIC_method__J1_WildConcat__test:
		push ebp
		mov ebp, esp

		;; Minus
		;; LHS code...
		;; ---Method Invocation: concat
		;; Primary.id(ArgList)
			;; ---new [J1_WildConcat] ()
			;; Allocating size of 8
			mov eax, 8
						call __malloc
							mov ebx, __class_J1_WildConcat
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
			call __constructor__J1_WildConcat__J1_WildConcat
			add esp, 0
			pop eax

			;; ---end of new [J1_WildConcat] ()
		;; Null Check:
		cmp eax, 0
		je __exception
		push eax

		;; Pushing args
		;; class method: concat
		;; addr of o
		mov eax, [esp + 0]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 36]

		call eax

		;; pop arguments
		add esp, 4

		;; ---End of method invocation
		push eax
		;; RHS code...
		mov eax, 295343374
		pop ebx
		sub ebx, eax
		mov eax, ebx

		jmp _method_return___STATIC_method__J1_WildConcat__test

		_method_return___STATIC_method__J1_WildConcat__test:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_WildConcat__foo
	__method__J1_WildConcat__foo:
		push ebp
		mov ebp, esp

		;; ---declare result
		;; Plus
		;; LHS code...
		mov eax, 8
		call __malloc
		mov ebx, __class_java_lang_String
		mov [eax], ebx
		push eax

		mov eax, 0
		mov ebx, 0
		call __new_array
		push eax
		call __constructor__java_lang_String__String$char@$
		add esp, 4
		pop eax
		push eax
		;; RHS code...
					;; Implicit This
			mov eax, [ebp + 8]
			;; Field x
			add eax, 4

		push eax
			;; Plus
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 8]
			;; Field x
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 1
			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax

		pop ebx
		add ebx, eax
		mov eax, ebx


		push eax
		;; ---end of declare result

		;; if statement0
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Div
		;; RHS code...
		mov eax, 3
		cmp eax, 0
		je __exception
		push eax
		;; LHS code...
		;; Implicit This
		mov eax, [ebp + 8]
		;; Field x
		add eax, 4
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
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else0
		;thenClause ...
							;; Local Var result
				mov eax, ebp
				sub eax, 4

			push eax
				mov eax, 0
			pop ebx
			mov [ebx], eax


		jmp .endif0

		.else0:
		.endif0:
		;; Local Var result
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___method__J1_WildConcat__foo

		_method_return___method__J1_WildConcat__foo:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_WildConcat__concat
	__method__J1_WildConcat__concat:
		push ebp
		mov ebp, esp

		;; ---declare n
		mov eax, 10

		push eax
		;; ---end of declare n

		;; ---declare sum
		mov eax, 0

		push eax
		;; ---end of declare sum

		.while1:
			;expression code...
			;; ompare_gt
			;; LHS code...
			;; Local Var n
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			jg .gt0
			mov eax, 0
			jmp .end_gt0
			.gt0:
				mov eax, 1
			.end_gt0:

			cmp eax, 0
			je .endwhile1
			;; while statement code...
			;; ---declare s
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; Plus
			;; LHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			push eax
			;; RHS code...
			;; ---Method Invocation: foo
			;; Names(ArgList)
			mov eax, [ebp+8]
			;; Null Check:
			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method: foo
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 32]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx

			pop ebx
			add ebx, eax
			mov eax, ebx


			push eax
			;; ---end of declare s


							;; Local Var sum
				mov eax, ebp
				sub eax, 8

			push eax
				;; Plus
				;; LHS code...
				;; Local Var sum
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				;; ---Method Invocation: hashCode
				;; Names(ArgList)
					;; Local Var s
					mov eax, ebp
					sub eax, 12
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; non-static, pushing reference
				push eax

				;; Pushing args
				;; class method: hashCode
				;; addr of o
				mov eax, [esp + 0]
				;; vtable
				mov eax, [eax]
				;; addr of m body
				mov eax, [eax + 12]

				call eax

				;; pop arguments
				add esp, 4

				;; ---End of method invocation
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


							;; Local Var n
				mov eax, ebp
				sub eax, 4

			push eax
				;; Minus
				;; LHS code...
				;; Local Var n
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				sub ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


			add esp, 4

			jmp .while1

		.endwhile1:

			add esp, 4

		;; Local Var sum
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		jmp _method_return___method__J1_WildConcat__concat

		_method_return___method__J1_WildConcat__concat:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_WildConcat__J1_WildConcat
	__constructor__J1_WildConcat__J1_WildConcat:
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
;; Field init:: x
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
