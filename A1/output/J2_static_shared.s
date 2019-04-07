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

	global __class_J2_static_shared
__class_J2_static_shared:
		global __ref_SIT_J2_static_shared
	__ref_SIT_J2_static_shared:
		dd 0

		global __ref_PARENTS_J2_static_shared
	__ref_PARENTS_J2_static_shared:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__J2_static_shared__bump$int$int$
		dd __STATIC_method__J2_static_shared__test
		dd __STATIC_method__J2_static_shared__bump$int$

;; Static fields
		global __field_J2_static_shared_shared
__field_J2_static_shared_shared:
		dd 0


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

mov ebx, __ref_SIT_J2_static_shared
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

;; Static Field: __field_J2_static_shared_shared
	mov eax, 0
mov ebx, __field_J2_static_shared_shared
mov [ebx], eax

call @@@@main
mov ebx, eax
mov eax, 1
int 0x80


global @@@@main
@@@@main:
		global __STATIC_method__J2_static_shared__test
	__STATIC_method__J2_static_shared__test:
		push ebp
		mov ebp, esp

		;; ---declare o1
		;; ---new [J2_static_shared] ()
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_J2_static_shared
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__J2_static_shared__J2_static_shared
		add esp, 0
		pop eax

		;; ---end of new [J2_static_shared] ()

		push eax
		;; ---end of declare o1

		;; ---declare o2
		;; ---new [J2_static_shared] ()
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_J2_static_shared
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__J2_static_shared__J2_static_shared
		add esp, 0
		pop eax

		;; ---end of new [J2_static_shared] ()

		push eax
		;; ---end of declare o2

		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var o1
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			mov eax, 3
			push eax

			mov eax, 1000
			push eax

		;; class method:
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
		;; ---Method Invocation: 
		;; Names(ArgList)
			;; Local Var o2
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
			mov eax, 20
			push eax

			mov eax, 1001
			push eax

		;; class method:
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
		;; ---Method Invocation: 
		;; Names(ArgList)

		;; static method, dont push this

		;; Pushing args
			mov eax, 100
			push eax

		;; static method:
		call __STATIC_method__J2_static_shared__bump$int$

		add esp, 4

		;; ---End of method invocation
		;; Mult
		;; LHS code...

		mov eax, __field_J2_static_shared_shared
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Minus
		;; LHS code...
		;; Local Var o2
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field mine
		add eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var o1
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field mine
		add eax, 4
		mov eax, [eax]

		pop ebx
		sub ebx, eax
		mov eax, ebx

		pop ebx
		imul ebx, eax
		mov eax, ebx

		jmp _method_return___STATIC_method__J2_static_shared__test

		_method_return___STATIC_method__J2_static_shared__test:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__J2_static_shared__bump$int$
	__STATIC_method__J2_static_shared__bump$int$:
		push ebp
		mov ebp, esp

		
			mov eax, __field_J2_static_shared_shared

		push eax
			;; Plus
			;; LHS code...

			mov eax, __field_J2_static_shared_shared
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var ds
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax


		_method_return___STATIC_method__J2_static_shared__bump$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__J2_static_shared__bump$int$int$
	__method__J2_static_shared__bump$int$int$:
		push ebp
		mov ebp, esp

		
			mov eax, __field_J2_static_shared_shared

		push eax
			;; Plus
			;; LHS code...

			mov eax, __field_J2_static_shared_shared
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var ds
			mov eax, ebp
			add eax, 12
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax

					;; Implicit This
			mov eax, [ebp + 16]
			;; Field mine
			add eax, 4

		push eax
			;; Plus
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 16]
			;; Field mine
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var dm
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax


		_method_return___method__J2_static_shared__bump$int$int$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J2_static_shared__J2_static_shared
	__constructor__J2_static_shared__J2_static_shared:
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
;; Field init:: mine
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
