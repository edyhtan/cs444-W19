extern __exception
extern __ref_SIT_java_lang_Number
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

	global __class_J1_A_ConcatInSimpleInvoke
__class_J1_A_ConcatInSimpleInvoke:
		global __ref_SIT_J1_A_ConcatInSimpleInvoke
	__ref_SIT_J1_A_ConcatInSimpleInvoke:
		dd 0

		global __ref_PARENTS_J1_A_ConcatInSimpleInvoke
	__ref_PARENTS_J1_A_ConcatInSimpleInvoke:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_A_ConcatInSimpleInvoke__test
		dd __method__J1_A_ConcatInSimpleInvoke__method2
		dd __method__J1_A_ConcatInSimpleInvoke__method1$java_lang_String$

;; Static fields

section .text

;; -----Methods-----
		global __method__J1_A_ConcatInSimpleInvoke__method1$java_lang_String$
	__method__J1_A_ConcatInSimpleInvoke__method1$java_lang_String$:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var str
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

		;; ---End of method invocation
		jmp _method_return___method__J1_A_ConcatInSimpleInvoke__method1$java_lang_String$

		_method_return___method__J1_A_ConcatInSimpleInvoke__method1$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_A_ConcatInSimpleInvoke__method2
	__method__J1_A_ConcatInSimpleInvoke__method2:
		push ebp
		mov ebp, esp

		;; ---declare z
		mov eax, 1

		push eax
		;; ---end of declare z

		;; ---declare b
		;; casting
		;; primitive run-time casting to [byte]
				mov eax, 0
		and eax, 0xff

		push eax
		;; ---end of declare b

		;; ---declare c
		mov eax, 49

		push eax
		;; ---end of declare c

		;; ---declare s
		;; casting
		;; primitive run-time casting to [short]
				mov eax, 2
		and eax, 0xfff

		push eax
		;; ---end of declare s

		;; ---declare i
		mov eax, 3

		push eax
		;; ---end of declare i

		;; ---declare o
		mov eax, 0

		push eax
		;; ---end of declare o

		;; Plus
		;; LHS code...
		;; ---Method Invocation: 
		;; Names(ArgList)
		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
			;; Plus
			;; LHS code...
						push eax
			;; RHS code...
			;; Local Var z
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Local Var b
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Local Var c
			mov eax, ebp
			sub eax, 12
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Local Var s
			mov eax, ebp
			sub eax, 16
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 20
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			;; Local Var o
			mov eax, ebp
			sub eax, 24
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			add ebx, eax
			mov eax, ebx

			push eax

		;; class method:
		;; addr of o
		mov eax, [esp + 4]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 36]

		call eax

		;; pop arguments
		add esp, 8

		;; ---End of method invocation
		push eax
		;; RHS code...
		mov eax, 107
		pop ebx
		add ebx, eax
		mov eax, ebx

		jmp _method_return___method__J1_A_ConcatInSimpleInvoke__method2

		_method_return___method__J1_A_ConcatInSimpleInvoke__method2:
			mov esp, ebp
			pop ebp
			ret

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

mov ebx, __ref_SIT_J1_A_ConcatInSimpleInvoke
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
		global __STATIC_method__J1_A_ConcatInSimpleInvoke__test
	__STATIC_method__J1_A_ConcatInSimpleInvoke__test:
		push ebp
		mov ebp, esp

		;; ---declare j
		;; ---new [J1_A_ConcatInSimpleInvoke] ()
		;; Allocating size of 4
		mov eax, 4
				call __malloc
					mov ebx, __class_J1_A_ConcatInSimpleInvoke
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__J1_A_ConcatInSimpleInvoke__J1_A_ConcatInSimpleInvoke
		add esp, 0
		pop eax

		;; ---end of new [J1_A_ConcatInSimpleInvoke] ()

		push eax
		;; ---end of declare j

		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var j
			mov eax, ebp
			sub eax, 4
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
		mov eax, [eax + 32]

		call eax

		;; pop arguments
		add esp, 4

		;; ---End of method invocation
		jmp _method_return___STATIC_method__J1_A_ConcatInSimpleInvoke__test

		_method_return___STATIC_method__J1_A_ConcatInSimpleInvoke__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_A_ConcatInSimpleInvoke__J1_A_ConcatInSimpleInvoke
	__constructor__J1_A_ConcatInSimpleInvoke__J1_A_ConcatInSimpleInvoke:
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
