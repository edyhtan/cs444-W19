extern __ref_SIT_java_lang_Number
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_java_lang_Short
extern __ref_SIT_java_lang_Character
extern __class_ArrayTemplate
extern __constructor__java_io_PrintStream__PrintStream
extern __ref_SIT_java_lang_String
extern __class_java_lang_Object
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

	global __class_J1_typecheck_equality
__class_J1_typecheck_equality:
		global __ref_SIT_J1_typecheck_equality
	__ref_SIT_J1_typecheck_equality:
		dd 0

		global __ref_PARENTS_J1_typecheck_equality
	__ref_PARENTS_J1_typecheck_equality:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_typecheck_equality__test

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

mov ebx, __ref_SIT_J1_typecheck_equality
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
		global __STATIC_method__J1_typecheck_equality__test
	__STATIC_method__J1_typecheck_equality__test:
		push ebp
		mov ebp, esp

		;; ---declare o
		;; ---new [java, lang, Object] ()
		;; Allocating size of 4
		mov eax, 4
				call __malloc
					mov ebx, __class_java_lang_Object
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__java_lang_Object__Object
		add esp, 0
		pop eax

		;; ---end of new [java, lang, Object] ()

		push eax
		;; ---end of declare o

		;; ---declare b
		mov eax, 1

		push eax
		;; ---end of declare b

					;; Local Var b
			mov eax, ebp
			sub eax, 8

		push eax
			;; logical_and
			;; logical_and
			;; logical_and
			;; logical_and
			;; logical_and
			;; ompare_eq
			;; LHS code...
			mov eax, 1
			push eax
			;; RHS code...
			mov eax, 1
			pop ebx
			cmp ebx, eax
			je .eq7
			mov eax, 0
			jmp .end_eq7
			.eq7:
				mov eax, 1
			.end_eq7:

			cmp eax, 0
			je .end_and6
			;; Unary boolean negation
			;; ompare_eq
			;; LHS code...
			mov eax, 1
			push eax
			;; RHS code...
			mov eax, 2
			pop ebx
			cmp ebx, eax
			je .eq8
			mov eax, 0
			jmp .end_eq8
			.eq8:
				mov eax, 1
			.end_eq8:

			mov ebx, 1
			sub ebx, eax
			mov eax, ebx
			.end_and6:

			cmp eax, 0
			je .end_and5
			;; ompare_eq
			;; LHS code...
			mov eax, 1
			push eax
			;; RHS code...
			mov eax, 1
			pop ebx
			cmp ebx, eax
			je .eq9
			mov eax, 0
			jmp .end_eq9
			.eq9:
				mov eax, 1
			.end_eq9:

			.end_and5:

			cmp eax, 0
			je .end_and4
			;; Unary boolean negation
			;; ompare_eq
			;; LHS code...
			mov eax, 1
			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			je .eq10
			mov eax, 0
			jmp .end_eq10
			.eq10:
				mov eax, 1
			.end_eq10:

			mov ebx, 1
			sub ebx, eax
			mov eax, ebx
			.end_and4:

			cmp eax, 0
			je .end_and3
			;; ompare_eq
			;; LHS code...
			;; Local Var o
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var o
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			je .eq11
			mov eax, 0
			jmp .end_eq11
			.eq11:
				mov eax, 1
			.end_eq11:

			.end_and3:

			cmp eax, 0
			je .end_and2
			;; Unary boolean negation
			;; ompare_eq
			;; LHS code...
			;; Local Var o
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; ---new [java, lang, Object] ()
			;; Allocating size of 4
			mov eax, 4
						call __malloc
							mov ebx, __class_java_lang_Object
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
			call __constructor__java_lang_Object__Object
			add esp, 0
			pop eax

			;; ---end of new [java, lang, Object] ()
			pop ebx
			cmp ebx, eax
			je .eq12
			mov eax, 0
			jmp .end_eq12
			.eq12:
				mov eax, 1
			.end_eq12:

			mov ebx, 1
			sub ebx, eax
			mov eax, ebx
			.end_and2:

		pop ebx
		mov [ebx], eax

		;; if statement0
		;expression code...
		;; Local Var b
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 123
			jmp _method_return___STATIC_method__J1_typecheck_equality__test

		jmp .endif0

		.else0:
			;elseClause ...
			mov eax, 7
			jmp _method_return___STATIC_method__J1_typecheck_equality__test

		.endif0:

		_method_return___STATIC_method__J1_typecheck_equality__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_typecheck_equality__J1_typecheck_equality
	__constructor__J1_typecheck_equality__J1_typecheck_equality:
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
