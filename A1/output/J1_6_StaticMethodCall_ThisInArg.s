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

	global __class_J1_6_StaticMethodCall_ThisInArg
__class_J1_6_StaticMethodCall_ThisInArg:
		global __ref_SIT_J1_6_StaticMethodCall_ThisInArg
	__ref_SIT_J1_6_StaticMethodCall_ThisInArg:
		dd 0

		global __ref_PARENTS_J1_6_StaticMethodCall_ThisInArg
	__ref_PARENTS_J1_6_StaticMethodCall_ThisInArg:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$
		dd __method__J1_6_StaticMethodCall_ThisInArg__instanceMethod
		dd __STATIC_method__J1_6_StaticMethodCall_ThisInArg__test

;; Static fields

section .text

;; -----Methods-----
		global __method__J1_6_StaticMethodCall_ThisInArg__instanceMethod
	__method__J1_6_StaticMethodCall_ThisInArg__instanceMethod:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Names(ArgList)

		;; static method, dont push this

		;; Pushing args
			;; Implicit This
			mov eax, [ebp + 8]
			;; Field foo
			add eax, 4
			mov eax, [eax]

			push eax

		;; static method:
		call __STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$

		add esp, 4

		;; ---End of method invocation
		jmp _method_return___method__J1_6_StaticMethodCall_ThisInArg__instanceMethod

		_method_return___method__J1_6_StaticMethodCall_ThisInArg__instanceMethod:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$
	__STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$:
		push ebp
		mov ebp, esp

		;; Local Var foo
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		jmp _method_return___STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$

		_method_return___STATIC_method__J1_6_StaticMethodCall_ThisInArg__staticMethod$int$:
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

mov ebx, __ref_SIT_J1_6_StaticMethodCall_ThisInArg
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
		global __STATIC_method__J1_6_StaticMethodCall_ThisInArg__test
	__STATIC_method__J1_6_StaticMethodCall_ThisInArg__test:
		push ebp
		mov ebp, esp

		;; ---declare j
		;; ---new [J1_6_StaticMethodCall_ThisInArg] ()
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_J1_6_StaticMethodCall_ThisInArg
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__J1_6_StaticMethodCall_ThisInArg__J1_6_StaticMethodCall_ThisInArg
		add esp, 0
		pop eax

		;; ---end of new [J1_6_StaticMethodCall_ThisInArg] ()

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
		jmp _method_return___STATIC_method__J1_6_StaticMethodCall_ThisInArg__test

		_method_return___STATIC_method__J1_6_StaticMethodCall_ThisInArg__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_6_StaticMethodCall_ThisInArg__J1_6_StaticMethodCall_ThisInArg
	__constructor__J1_6_StaticMethodCall_ThisInArg__J1_6_StaticMethodCall_ThisInArg:
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
;; Field init:: foo
				mov eax, 123
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
