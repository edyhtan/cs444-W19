	global __class_java_lang_Object
__class_java_lang_Object:

section .data

		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object:		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object:		dd 00000000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

section .text

		global __method__java_lang_Object__equals$java_lang_Object$
	__method__java_lang_Object__equals$java_lang_Object$:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Object__equals$java_lang_Object$

		_method_return___method__java_lang_Object__equals$java_lang_Object$:
			pop ebp
			ret

		global __method__java_lang_Object__toString
	__method__java_lang_Object__toString:
		push ebp
		mov ebp, esp

		sub esp,0
				jmp _method_return___method__java_lang_Object__toString

		_method_return___method__java_lang_Object__toString:
			pop ebp
			ret

		global __method__java_lang_Object__hashCode
	__method__java_lang_Object__hashCode:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, 42
		jmp _method_return___method__java_lang_Object__hashCode

		_method_return___method__java_lang_Object__hashCode:
			pop ebp
			ret

		global __method__java_lang_Object__clone
	__method__java_lang_Object__clone:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Object__clone

		_method_return___method__java_lang_Object__clone:
			pop ebp
			ret

		global __method__java_lang_Object__getClass
	__method__java_lang_Object__getClass:
		push ebp
		mov ebp, esp

		sub esp,0
		mov eax, 0
		jmp _method_return___method__java_lang_Object__getClass

		_method_return___method__java_lang_Object__getClass:
			pop ebp
			ret

