	global __class_A
__class_A:

section .data

		global __ref_SIT_A
	__ref_SIT_A:		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A:		dd 00001000010000000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__A__test

section .text

;; -----Methods-----
	global _start
_start:

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_io_OutputStream
mov ebx, __ref_SIT_java_io_OutputStream
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_io_PrintStream
mov ebx, __ref_SIT_java_io_PrintStream
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Boolean
mov ebx, __ref_SIT_java_lang_Boolean
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Byte
mov ebx, __ref_SIT_java_lang_Byte
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Character
mov ebx, __ref_SIT_java_lang_Character
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Class
mov ebx, __ref_SIT_java_lang_Class
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Integer
mov ebx, __ref_SIT_java_lang_Integer
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Number
mov ebx, __ref_SIT_java_lang_Number
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Object
mov ebx, __ref_SIT_java_lang_Object
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Short
mov ebx, __ref_SIT_java_lang_Short
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_String
mov ebx, __ref_SIT_java_lang_String
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_lang_System
mov ebx, __ref_SIT_java_lang_System
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_util_Arrays
mov ebx, __ref_SIT_java_util_Arrays
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

mov ebx, __ref_SIT_A
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_foo_bar
mov ebx, __ref_SIT_foo_bar
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_Hello
mov ebx, __ref_SIT_Hello
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_Main
mov ebx, __ref_SIT_Main
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_Static
mov ebx, __ref_SIT_Static
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

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

				mov eax, 123
		jmp _method_return___STATIC_method__A__test

		_method_return___STATIC_method__A__test:
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__A__A
	__constructor__A__A:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
			extern __constuctor__java_lang_Object__Object
		mov eax, __constuctor__java_lang_Object__Object
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
