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
extern __method__java_lang_Object__hashCode
extern __ref_SIT_java_lang_Byte
extern __field_java_lang_System_out
extern __field_java_lang_Byte_MAX_VALUE
extern __ref_SIT_java_lang_System
extern __field_java_lang_Integer_MAX_VALUE
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_J1_A_ArrayStoreLoad
__class_J1_A_ArrayStoreLoad:
		global __ref_SIT_J1_A_ArrayStoreLoad
	__ref_SIT_J1_A_ArrayStoreLoad:
		dd 0

		global __ref_PARENTS_J1_A_ArrayStoreLoad
	__ref_PARENTS_J1_A_ArrayStoreLoad:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_A_ArrayStoreLoad__test

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

mov ebx, __ref_SIT_J1_A_ArrayStoreLoad
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
		global __STATIC_method__J1_A_ArrayStoreLoad__test
	__STATIC_method__J1_A_ArrayStoreLoad__test:
		push ebp
		mov ebp, esp

		;; ---declare z
		;; ---Array Creation: [boolean]

			;; Size Expression:
				mov eax, 3

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare z

		;; ---declare b
		;; ---Array Creation: [byte]

			;; Size Expression:
				mov eax, 4

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare b

		;; ---declare s
		;; ---Array Creation: [short]

			;; Size Expression:
				mov eax, 5

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare s

		;; ---declare c
		;; ---Array Creation: [char]

			;; Size Expression:
				mov eax, 6

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare c

		;; ---declare i
		;; ---Array Creation: [int]

			;; Size Expression:
				mov eax, 7

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare i

		;; ---declare o
		;; ---Array Creation: [String]

			;; Size Expression:
				mov eax, 8

			;; Class Tag
			mov ebx, __class_ArrayTemplate

			mov edx, __new_array
			call edx
		;; --- End Array Creation

		push eax
		;; ---end of declare o

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var z
					mov eax, ebp
					sub eax, 4
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 1

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
			mov eax, 1
		pop ebx
		mov [ebx], eax

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var b
					mov eax, ebp
					sub eax, 8
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 2

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
			;; casting
			;; primitive run-time casting to [byte]
						mov eax, 42
			and eax, 0xff
		pop ebx
		mov [ebx], eax

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var s
					mov eax, ebp
					sub eax, 12
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 3

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
			;; casting
			;; primitive run-time casting to [short]
						mov eax, 12345
			and eax, 0xfff
		pop ebx
		mov [ebx], eax

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var c
					mov eax, ebp
					sub eax, 16
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 4

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
			mov eax, 37
		pop ebx
		mov [ebx], eax

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var i
					mov eax, ebp
					sub eax, 20
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 5

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
			mov eax, 123
		pop ebx
		mov [ebx], eax

					;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var o
					mov eax, ebp
					sub eax, 24
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 6

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
		push eax
					pop ebx
		mov [ebx], eax

		;; if statement0
		;expression code...
		;; Unary boolean negation
		;; ---Array Access get Addr:

			;; Get array instance:
				;; Local Var z
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; Push array instance addr
			push eax

			;; Get array index
				mov eax, 1

			;; Pop arr instance addr to ebx:
			pop ebx

			;; Bound check
			mov ecx, [ebx + 8]
			cmp eax, ecx
			jge __exception
			cmp ecx, 0
			jl __exception

		;; ---End Array Access get Addr
		;; Dereference array addr to value
		mov eax, [eax]
		mov ebx, 1
		sub ebx, eax
		mov eax, ebx
		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 1
			jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test


		jmp .endif0

		.else0:
		.endif0:
		;; if statement1
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; ---Array Access get Addr:

			;; Get array instance:
				;; Local Var b
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; Push array instance addr
			push eax

			;; Get array index
				mov eax, 2

			;; Pop arr instance addr to ebx:
			pop ebx

			;; Bound check
			mov ecx, [ebx + 8]
			cmp eax, ecx
			jge __exception
			cmp ecx, 0
			jl __exception

		;; ---End Array Access get Addr
		;; Dereference array addr to value
		mov eax, [eax]
		push eax
		;; RHS code...
		mov eax, 42
		pop ebx
		cmp ebx, eax
		jne .ne4
		mov eax, 0
		jmp .end_ne4
		.ne4:
			mov eax, 1
		.end_ne4:

		cmp eax, 0
		je .else1
		;thenClause ...
			mov eax, 2
			jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test


		jmp .endif1

		.else1:
		.endif1:
		;; if statement2
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; ---Array Access get Addr:

			;; Get array instance:
				;; Local Var s
				mov eax, ebp
				sub eax, 12
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; Push array instance addr
			push eax

			;; Get array index
				mov eax, 3

			;; Pop arr instance addr to ebx:
			pop ebx

			;; Bound check
			mov ecx, [ebx + 8]
			cmp eax, ecx
			jge __exception
			cmp ecx, 0
			jl __exception

		;; ---End Array Access get Addr
		;; Dereference array addr to value
		mov eax, [eax]
		push eax
		;; RHS code...
		mov eax, 12345
		pop ebx
		cmp ebx, eax
		jne .ne5
		mov eax, 0
		jmp .end_ne5
		.ne5:
			mov eax, 1
		.end_ne5:

		cmp eax, 0
		je .else2
		;thenClause ...
			mov eax, 3
			jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test


		jmp .endif2

		.else2:
		.endif2:
		;; if statement3
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; ---Array Access get Addr:

			;; Get array instance:
				;; Local Var c
				mov eax, ebp
				sub eax, 16
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; Push array instance addr
			push eax

			;; Get array index
				mov eax, 4

			;; Pop arr instance addr to ebx:
			pop ebx

			;; Bound check
			mov ecx, [ebx + 8]
			cmp eax, ecx
			jge __exception
			cmp ecx, 0
			jl __exception

		;; ---End Array Access get Addr
		;; Dereference array addr to value
		mov eax, [eax]
		push eax
		;; RHS code...
		mov eax, 37
		pop ebx
		cmp ebx, eax
		jne .ne6
		mov eax, 0
		jmp .end_ne6
		.ne6:
			mov eax, 1
		.end_ne6:

		cmp eax, 0
		je .else3
		;thenClause ...
			mov eax, 4
			jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test


		jmp .endif3

		.else3:
		.endif3:
		;; if statement4
		;expression code...
		;; Unary boolean negation
		;; ---Method Invocation: 
		;; Primary.id(ArgList)
			;; ---Array Access get Addr:

				;; Get array instance:
					;; Local Var o
					mov eax, ebp
					sub eax, 24
					mov eax, [eax]

				;; Null Check:
				cmp eax, 0
				je __exception
				;; Push array instance addr
				push eax

				;; Get array index
					mov eax, 6

				;; Pop arr instance addr to ebx:
				pop ebx

				;; Bound check
				mov ecx, [ebx + 8]
				cmp eax, ecx
				jge __exception
				cmp ecx, 0
				jl __exception

			;; ---End Array Access get Addr
			;; Dereference array addr to value
			mov eax, [eax]
		;; Null Check:
		cmp eax, 0
		je __exception
		push eax

		;; Pushing args
			;; casting
									cmp eax, 0
			je .cast_end7
			mov eax, [eax]
			mov eax, [eax+4]
			shr eax, 10
			and eax, 0x1
			cmp eax, 0
			je __exception
			.cast_end7:
			push eax

		;; class method:
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
		mov ebx, 1
		sub ebx, eax
		mov eax, ebx
		cmp eax, 0
		je .else4
		;thenClause ...
			mov eax, 5
			jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test


		jmp .endif4

		.else4:
		.endif4:
		;; ---Array Access get Addr:

			;; Get array instance:
				;; Local Var i
				mov eax, ebp
				sub eax, 20
				mov eax, [eax]

			;; Null Check:
			cmp eax, 0
			je __exception
			;; Push array instance addr
			push eax

			;; Get array index
				mov eax, 5

			;; Pop arr instance addr to ebx:
			pop ebx

			;; Bound check
			mov ecx, [ebx + 8]
			cmp eax, ecx
			jge __exception
			cmp ecx, 0
			jl __exception

		;; ---End Array Access get Addr
		;; Dereference array addr to value
		mov eax, [eax]
		jmp _method_return___STATIC_method__J1_A_ArrayStoreLoad__test

		_method_return___STATIC_method__J1_A_ArrayStoreLoad__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_A_ArrayStoreLoad__J1_A_ArrayStoreLoad
	__constructor__J1_A_ArrayStoreLoad__J1_A_ArrayStoreLoad:
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
