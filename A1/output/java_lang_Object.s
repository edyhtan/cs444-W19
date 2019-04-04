	global __class_java_lang_Object
__class_java_lang_Object:
section .data

		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object		dd 0

section .text

		global __method__Main__equals$java_lang_Object$
	__method__Main__equals$java_lang_Object$:
		push ebp
		mov ebp,esp

		sub esp,0
		jmp _method_return___method__Main__equals$java_lang_Object$

	_method_return___method__Main__equals$java_lang_Object$:
		pop ebp
		ret

		global __method__Main__toString
	__method__Main__toString:
		push ebp
		mov ebp,esp

		sub esp,0
		mov eax,"Some random object"
		jmp _method_return___method__Main__toString

	_method_return___method__Main__toString:
		pop ebp
		ret

		global __method__Main__hashCode
	__method__Main__hashCode:
		push ebp
		mov ebp,esp

		sub esp,0
		mov eax,42
		jmp _method_return___method__Main__hashCode

	_method_return___method__Main__hashCode:
		pop ebp
		ret

		global __method__Main__clone
	__method__Main__clone:
		push ebp
		mov ebp,esp

		sub esp,0
		jmp _method_return___method__Main__clone

	_method_return___method__Main__clone:
		pop ebp
		ret

		global __method__Main__getClass
	__method__Main__getClass:
		push ebp
		mov ebp,esp

		sub esp,0
		mov eax,null
		jmp _method_return___method__Main__getClass

	_method_return___method__Main__getClass:
		pop ebp
		ret

