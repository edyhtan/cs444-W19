	global __class_A
__class_A:

section .data

		global __ref_SIT_A
	__ref_SIT_A		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A		dd 00001000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__A__test

section .text

	global _start
_start:

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_io_OutputStream
mov ebx, __ref_SIT_java_io_OutputStream
mov [ebx], eax

	extern __method__java_io_OutputStream__hashCode
	mov ebx, __method__java_io_OutputStream__hashCode
	mov [eax + 0], ebx

	extern __method__java_io_OutputStream__equals$java_lang_Object$
	mov ebx, __method__java_io_OutputStream__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_io_OutputStream__clone
	mov ebx, __method__java_io_OutputStream__clone
	mov [eax + 8], ebx

	extern __method__java_io_OutputStream__toString
	mov ebx, __method__java_io_OutputStream__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_io_PrintStream
mov ebx, __ref_SIT_java_io_PrintStream
mov [ebx], eax

	extern __method__java_io_PrintStream__hashCode
	mov ebx, __method__java_io_PrintStream__hashCode
	mov [eax + 0], ebx

	extern __method__java_io_PrintStream__equals$java_lang_Object$
	mov ebx, __method__java_io_PrintStream__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_io_PrintStream__clone
	mov ebx, __method__java_io_PrintStream__clone
	mov [eax + 8], ebx

	extern __method__java_io_PrintStream__toString
	mov ebx, __method__java_io_PrintStream__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Boolean
mov ebx, __ref_SIT_java_lang_Boolean
mov [ebx], eax

	extern __method__java_lang_Boolean__hashCode
	mov ebx, __method__java_lang_Boolean__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Boolean__equals$java_lang_Object$
	mov ebx, __method__java_lang_Boolean__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Boolean__clone
	mov ebx, __method__java_lang_Boolean__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Boolean__toString
	mov ebx, __method__java_lang_Boolean__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Byte
mov ebx, __ref_SIT_java_lang_Byte
mov [ebx], eax

	extern __method__java_lang_Byte__hashCode
	mov ebx, __method__java_lang_Byte__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Byte__equals$java_lang_Object$
	mov ebx, __method__java_lang_Byte__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Byte__clone
	mov ebx, __method__java_lang_Byte__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Byte__toString
	mov ebx, __method__java_lang_Byte__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Character
mov ebx, __ref_SIT_java_lang_Character
mov [ebx], eax

	extern __method__java_lang_Character__hashCode
	mov ebx, __method__java_lang_Character__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Character__equals$java_lang_Object$
	mov ebx, __method__java_lang_Character__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Character__clone
	mov ebx, __method__java_lang_Character__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Character__toString
	mov ebx, __method__java_lang_Character__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Class
mov ebx, __ref_SIT_java_lang_Class
mov [ebx], eax

	extern __method__java_lang_Class__hashCode
	mov ebx, __method__java_lang_Class__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Class__equals$java_lang_Object$
	mov ebx, __method__java_lang_Class__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Class__clone
	mov ebx, __method__java_lang_Class__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Class__toString
	mov ebx, __method__java_lang_Class__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Integer
mov ebx, __ref_SIT_java_lang_Integer
mov [ebx], eax

	extern __method__java_lang_Integer__hashCode
	mov ebx, __method__java_lang_Integer__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Integer__equals$java_lang_Object$
	mov ebx, __method__java_lang_Integer__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Integer__clone
	mov ebx, __method__java_lang_Integer__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Integer__toString
	mov ebx, __method__java_lang_Integer__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Number
mov ebx, __ref_SIT_java_lang_Number
mov [ebx], eax

	extern __method__java_lang_Number__hashCode
	mov ebx, __method__java_lang_Number__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Number__equals$java_lang_Object$
	mov ebx, __method__java_lang_Number__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Number__clone
	mov ebx, __method__java_lang_Number__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Number__toString
	mov ebx, __method__java_lang_Number__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

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
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Short
mov ebx, __ref_SIT_java_lang_Short
mov [ebx], eax

	extern __method__java_lang_Short__hashCode
	mov ebx, __method__java_lang_Short__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Short__equals$java_lang_Object$
	mov ebx, __method__java_lang_Short__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Short__clone
	mov ebx, __method__java_lang_Short__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Short__toString
	mov ebx, __method__java_lang_Short__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_String
mov ebx, __ref_SIT_java_lang_String
mov [ebx], eax

	extern __method__java_lang_String__hashCode
	mov ebx, __method__java_lang_String__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_String__equals$java_lang_Object$
	mov ebx, __method__java_lang_String__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_String__clone
	mov ebx, __method__java_lang_String__clone
	mov [eax + 8], ebx

	extern __method__java_lang_String__toString
	mov ebx, __method__java_lang_String__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_System
mov ebx, __ref_SIT_java_lang_System
mov [ebx], eax

	extern __method__java_lang_System__hashCode
	mov ebx, __method__java_lang_System__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_System__equals$java_lang_Object$
	mov ebx, __method__java_lang_System__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_System__clone
	mov ebx, __method__java_lang_System__clone
	mov [eax + 8], ebx

	extern __method__java_lang_System__toString
	mov ebx, __method__java_lang_System__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_util_Arrays
mov ebx, __ref_SIT_java_util_Arrays
mov [ebx], eax

	extern __method__java_util_Arrays__hashCode
	mov ebx, __method__java_util_Arrays__hashCode
	mov [eax + 0], ebx

	extern __method__java_util_Arrays__equals$java_lang_Object$
	mov ebx, __method__java_util_Arrays__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_util_Arrays__clone
	mov ebx, __method__java_util_Arrays__clone
	mov [eax + 8], ebx

	extern __method__java_util_Arrays__toString
	mov ebx, __method__java_util_Arrays__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_A
mov ebx, __ref_SIT_A
mov [ebx], eax

	extern __method__A__hashCode
	mov ebx, __method__A__hashCode
	mov [eax + 0], ebx

	extern __method__A__equals$java_lang_Object$
	mov ebx, __method__A__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__A__clone
	mov ebx, __method__A__clone
	mov [eax + 8], ebx

	extern __method__A__toString
	mov ebx, __method__A__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_foo_bar
mov ebx, __ref_SIT_foo_bar
mov [ebx], eax

	extern __method__foo_bar__hashCode
	mov ebx, __method__foo_bar__hashCode
	mov [eax + 0], ebx

	extern __method__foo_bar__equals$java_lang_Object$
	mov ebx, __method__foo_bar__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__foo_bar__clone
	mov ebx, __method__foo_bar__clone
	mov [eax + 8], ebx

	extern __method__foo_bar__toString
	mov ebx, __method__foo_bar__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Hello
mov ebx, __ref_SIT_Hello
mov [ebx], eax

	extern __method__Hello__hashCode
	mov ebx, __method__Hello__hashCode
	mov [eax + 0], ebx

	extern __method__Hello__equals$java_lang_Object$
	mov ebx, __method__Hello__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Hello__clone
	mov ebx, __method__Hello__clone
	mov [eax + 8], ebx

	extern __method__Hello__toString
	mov ebx, __method__Hello__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Main
mov ebx, __ref_SIT_Main
mov [ebx], eax

	extern __method__Main__hashCode
	mov ebx, __method__Main__hashCode
	mov [eax + 0], ebx

	extern __method__Main__equals$java_lang_Object$
	mov ebx, __method__Main__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Main__clone
	mov ebx, __method__Main__clone
	mov [eax + 8], ebx

	extern __method__Main__toString
	mov ebx, __method__Main__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Static
mov ebx, __ref_SIT_Static
mov [ebx], eax

	extern __method__Static__hashCode
	mov ebx, __method__Static__hashCode
	mov [eax + 0], ebx

	extern __method__Static__equals$java_lang_Object$
	mov ebx, __method__Static__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Static__clone
	mov ebx, __method__Static__clone
	mov [eax + 8], ebx

	extern __method__Static__toString
	mov ebx, __method__Static__toString
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

		sub esp,0
		mov eax, 123123
		jmp _method_return___STATIC_method__A__test

		_method_return___STATIC_method__A__test:
			pop ebp
			ret

